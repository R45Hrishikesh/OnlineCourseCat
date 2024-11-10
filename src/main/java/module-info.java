module com.example.onlinecoursecatalogue {
    requires javafx.controls;
    requires javafx.fxml;


    opens com.example.onlinecoursecatalogue to javafx.fxml;
    exports com.example.onlinecoursecatalogue;
}