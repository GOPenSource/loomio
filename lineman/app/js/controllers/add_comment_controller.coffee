angular.module('loomioApp').controller 'AddCommentController', ($scope, CommentService) ->
  $scope.isExpanded = false

  $scope.expand = ->
    $scope.isExpanded = true

  $scope.collapseIfEmpty = ->
    if ($scope.commentField.val().length == 0)
      $scope.isExpanded = false

  $scope.processForm = () ->
    CommentService.add($scope.comment, $scope.discussion)
