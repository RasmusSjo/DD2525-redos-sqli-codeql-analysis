/**
 * @name Potential SQL Injection Vulnerability
 * @kind path-problem
 * @problem.severity error
 * @id js/custom-sql-injection
 */

import javascript

module CustomSqlInjectionConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source instanceof RemoteFlowSource
  }

  predicate isSink(DataFlow::Node sink) {
    exists(DataFlow::CallNode call |
      call.getCalleeName() = [
        "query",
        "execute",
        "raw",
        "prepare",
        "run",
        "all",
        "$queryRaw",
        "$queryRawUnsafe",
        "$executeRaw",
        "$executeRawUnsafe"
      ] and
      sink = call.getArgument(0)
    )
  }
}

module CustomSqlInjectionFlow = TaintTracking::Global<CustomSqlInjectionConfig>;

import CustomSqlInjectionFlow::PathGraph

from CustomSqlInjectionFlow::PathNode source, CustomSqlInjectionFlow::PathNode sink
where CustomSqlInjectionFlow::flowPath(source, sink)
select sink.getNode(), source, sink,
  "User-controlled data flows into raw SQL query."
