module Examples.Salesforce.Interface where

import           Data.Map  (fromList)
import           MCP.Types (DocTable)

data Prompt = NoPrompt

data Tool
  = GetForecast { startdate :: String, enddate :: String }
  | RunSoqlQuery { query :: String }

promptDoc :: DocTable
promptDoc = fromList
  -- constructor docs
  [ ( "NoPrompt" , "No prompt" )

  -- field-level docs
  ]

toolDoc :: DocTable
toolDoc = fromList
  -- constructor docs
  [ ( "GetForecast",     "Get the opportunities in Salesforce between two dates (these are only OPEN deals - ie not won or lost)" )
  , ( "RunSoqlQuery",    "Run a SOQL query against the Salesforce database" )

  -- field-level docs
  , ( "startdate",    "The start date for records in the request, in the form '2025-03-01'" )
  , ( "enddate"  ,    "The end date for records in the request, in the form '2025-03-01'" )
  , ( "query",        "The SOQL query to run" )
  ]

