# Description:
#   Listens for Github Posts for Pull Requests.  Analyzes Pull Request information for 
#   adherence to Ghost PR guidelines.
#
# Author:
#   Jacob Gable <jacob.gable@gmail.com>

module.exports = (robot) ->

    return unless robot.router

    robot.router.post '/github/hook', (req, res) ->

        console.log "Github POST", req.body

        prInfo = req.param 'pull_request'

        unless prInfo
            console.log "No pull_request info"
            return res.send 200

        console.log "PR Info: ", prInfo

        res.send 200