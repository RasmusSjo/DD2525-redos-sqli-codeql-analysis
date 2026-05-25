/**
 * @name Deduplicated Dual-Controlled Match ReDoS
 * @kind problem
 * @problem.severity error
 * @id js/deduplicated-dual-redos
 */

import javascript

module DualControlConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(MethodCallExpr mce |
      (mce.getMethodName() = ["match", "search", "replace", "replaceAll", "split", "test", "exec"]) and
      (sink = DataFlow::exprNode(mce.getArgument(0)) or sink = DataFlow::exprNode(mce.getReceiver()))
    )
  }
}

module Flow = TaintTracking::Global<DualControlConfig>;

from MethodCallExpr mce, string msg, DataFlow::Node patternSource, DataFlow::Node stringSource
where
  exists(Flow::PathNode sourcePattern, Flow::PathNode sinkPattern,
         Flow::PathNode sourceString, Flow::PathNode sinkString |
    Flow::flowPath(sourcePattern, sinkPattern) and
    Flow::flowPath(sourceString, sinkString) and
    patternSource = sourcePattern.getNode() and
    stringSource = sourceString.getNode() and
    (
      (
        mce.getMethodName() = ["match", "search", "replace", "replaceAll", "split"] and
        sinkPattern.getNode() = DataFlow::exprNode(mce.getArgument(0)) and
        sinkString.getNode() = DataFlow::exprNode(mce.getReceiver()) and
        msg = "ReDoS Hazard: Both the search pattern and the target string are user-controlled."
      ) or (
        mce.getMethodName() = ["test", "exec"] and
        sinkPattern.getNode() = DataFlow::exprNode(mce.getReceiver()) and
        sinkString.getNode() = DataFlow::exprNode(mce.getArgument(0)) and
        msg = "ReDoS Hazard: Both the execution RegExp object and the incoming string are user-controlled."
      )
    )
  )
select mce, msg + " Pattern source: $@, String source: $@.", 
  patternSource, patternSource.toString(), 
  stringSource, stringSource.toString()
