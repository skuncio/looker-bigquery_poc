connection: "nd_bigquery"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: machinelearning_loyalusers {}

explore: t8001_user_crossref {}

explore: t8002_contentview {}

explore: etw_restaurant {}
