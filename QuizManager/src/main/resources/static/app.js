var mainApp = angular.module("myApp", []);
mainApp.controller("selectAll", function ($scope) {
    $scope.checkboxes1 = [
        { label: "Junior", selected: false },
        { label: "Intermediar", selected: false },
        { label: "Senior", selected: false },
        { label: "Arhitect", selected: false }
    ];

    $scope.checkboxes2 = [
        { label: "C", selected: false },
        { label: "Java", selected: false },
        { label: "HTML", selected: false },
        { label: "SQL", selected: false }
    ];

    $scope.checkboxes3 = [
        { label: "0", selected: false },
        { label: "1", selected: false },
        { label: "2", selected: false },
        { label: "3", selected: false },
        { label: "4", selected: false }
    ];

    $scope.toggleSelect = function(){
		angular.forEach($scope.checkboxes1, function(item){
			item.selected = event.target.checked;
        });
        angular.forEach($scope.checkboxes2, function(item){
			item.selected = event.target.checked;
        });
        angular.forEach($scope.checkboxes3, function(item){
			item.selected = event.target.checked;
		});
    }
    
    $scope.clearSearch = function() {
        $scope.tehnologie = "";
        $scope.domeniu = "";
        $scope.dupaCuvant = "";
        $scope.select_deselect = event.target.unchecked;
        $scope.checkboxModel.cb1 = event.target.unchecked;
        $scope.label = false;
        angular.forEach($scope.checkboxes1, function(item){
			item.selected = event.target.unchecked;
        });
        angular.forEach($scope.checkboxes2, function(item){
			item.selected = event.target.unchecked;
        });
        angular.forEach($scope.checkboxes3, function(item){
			item.selected = event.target.unchecked;
        });			
    }

    $scope.getDifList = function(){
        var difList = [];
        angular.forEach($scope.checkboxes1, function(item){
			if(item.selected == event.target.checked && item.selected.label == "Junior"){
                difList.push(1);
            }
            if(item.selected == event.target.checked && item.selected.label == "Intermediar"){
                difList.push(2);
            }
            if(item.selected == event.target.checked && item.selected.label == "Senior"){
                difList.push(3);
            }
            if(item.selected == event.target.checked && item.selected.label == "Arhitect"){
                difList.push(4);
            }
        });
        return difList;
    }

    $scope.getLangList = function(){
        var langList = [];
        angular.forEach($scope.checkboxes2, function(item){
			if(item.selected == event.target.checked){
                langList.push(item.selected.label);
            }
        });
        return langList;
    }

    $scope.getAnsList = function(){
        var ansList = [];
        angular.forEach($scope.checkboxes3, function(item){
			if(item.selected == event.target.checked){
                ansList.push(parseInt(item.selected.label));
            }
        });
        return ansList;
    }
})

class Intrebare {
    constructor(id, nivelDificultate, limbaj, domeniu, tehnologie, punctaj) {
      this.id = id;
      this.nivelDificultate = nivelDificultate;
      this.limbaj = limbaj;
      this.domeniu = domeniu;
      this.tehnologie = tehnologie;
      this.punctaj = punctaj;
    }
  }
