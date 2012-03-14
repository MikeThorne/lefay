# Expands a message to a named group of people into their individual names
#
# merlin: <your message>

merlin_remote_members = [
  "cdickerson",
  "michael.ivey",
]

glastonbury_devs = [
  "Jesse Howarth",
  "Josiah Kiehl",
  "michael.ivey",
]


merlin_lax_members = [
  "Jesse Howarth",
  "Josiah Kiehl",
  "Jamie Winsor",
  "Istvan",
  "Chong Yan",
]

dashboard_members = [
  "Mat Schaffer",
  "Aaron Feng",
  "Trotter Cashion"
]

merlin_members = merlin_remote_members.concat merlin_lax_members

module.exports = (robot) ->
  robot.hear /^merlin( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_members.join(", ") + ": ^^"

  robot.hear /^merlin-lax( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_lax_members.join(", ") + ": ^^"

  robot.hear /^merlin-remote( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_remote_members.join(", ") + ": ^^"

  robot.hear /^dashboard( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send dashboard_members.join(", ") + ": ^^"

  robot.hear /^glastonbury( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send glastonbury_devs.join(", ") + ": ^^"
