
import QtQuick		2.12
import JASP.Module	1.0

Upgrades
{
    Upgrade
    {
        functionName:		"SummaryStatsCorrelationBayesianPairs"
        fromVersion:		"0.16.3"
        toVersion:			"0.16.4"

        ChangeJS
        {
            name:		"alternative"
            jsFunction:	function(options)
            {
                switch(options["alternative"])
                {
                    case "two.sided":				return "twoSided"	;
                    default:                        return options["alternative"];
                }
            }
        }

        ChangeRename { from: "ciValue";                                 to: "ciLevel"                               }

        // Prior posterior plots
        ChangeRename { from: "plotPriorPosterior";						to: "priorPosteriorPlot"					}
        ChangeRename { from: "plotPriorPosteriorAddEstimationInfo";		to: "priorPosteriorPlotAddEstimationInfo"	}
        ChangeRename { from: "plotPriorPosteriorAddTestingInfo";		to: "priorPosteriorPlotAddTestingInfo"		}


        // Bf Robustness plots
        ChangeRename { from: "plotBfRobustness";						to: "bfRobustnessPlot"						}
        ChangeRename { from: "plotBfRobustnessAddInfo";					to: "bfRobustnessPlotAddInfo"				}

        // Prior
        ChangeRename { from: "kappa";									to: "priorWidth"							}
    }

Upgrade
    {
        functionName:		"SummaryStatsABTestBayesian"
        fromVersion:		"0.16.3"
        toVersion:			"0.16.4"

        ChangeRename { from: "y1";  to: "group1Successes"  }

    }


}
