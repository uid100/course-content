<details>
    <summary>testVehicle</summary>
    <ol>
        <li>Open the Vehicle class and include the missing elements. Use the diagram to help guide you. What you see in the diagrams above shows information regarding the method headers. For example, getManufacturname is the name of one of the methods and returns a String.</li>
        <li>The only weird part about this one is the last parameter of the constructor. It requires an Option type. Create a blank Option class now so that you can use it as a type. Note that the instance variable for this will be an array of options.</li>
        <li>Other than the Option class, the rest of the tests are strictly getters to check that the instance variables of a Vehicle object are being set properly.</li>
    </ol>
</details>

<details>
    <summary>testOptions</summary>
    It's time to expand on the Option class. You will see that an option will keep track of a String to describe the option.</h4>
    <ol>
        <li>Add the missing instance variable</li>
        <li>Add the constructor so that can create an Option object with a given String (the "option").</li>
        <li>Add the getter, but the getter must be specifically called getDetails</li>
        <li>At this point, if you missed the fact that the Vehicle must have an array of Option objects then go back to Vehicle and make sure one of the instance variables is an array of Option objects. Your constructor's parameter list should match this change.</li>
        <li>Add the getOptions method in Vehicle which returns the array of Option objects.</li>
    </ol>
</details>

<details>
    <summary>testCar</summary>
    <div>
        Revisit the diagram to see what the relationship of a Car is to Vehicle. Remember, do not re-declare instance variables that come from the superclass!
        <ol>
            <li>Add the Car class. What class does it extend? Make sure your class header reflects the proper relationship.</li>
            <li>You'll notice that the constructor has an additional parameter in the parameter list. What might this be? Add the corresponding instance variable for it. </li>
            <li>Add the constructor. Make sure to call the super constructor here.</li>
            <li>Add the missing method from the diagram.</li>
        </ol>
</details>

<details>
    <summary>testPickUpTruck</summary>
        <ol>
            <li>Create the PickUpTruck class</li>
            <li>Look at the diagram to figure out what instance variable is unique to a PickUpTruck</li>
            <li>Did you extend the right class based on the diagram?</li>
            <li>Add the missing constructor. You may need to add an additional parameter in the parameter list to account for the instance variable in PickUpTruck. This is similar to what you had to do for Car.</li>
            <li>Add the missing method. What instance variable does it return?</li>
        </ol>
</details>

<details>
    <summary>testSportsUtilityVehicle</summary>
        <h4><i>Same process as Car and PickupTruck</i></h4>
</details>

<details>
    <summary>testGasCar</summary>
        <ol>
            <li>Create the necessary class and make sure it extends the correct class per the diagram.</li>
            <li>This one does not have a lot to it because it inherits a lot of the behaviors of its superclasses in the multi-level inheritance as shown in the diagram. (not the same as multiple inheritance)</li>
        </ol>
</details>

<details>
    <summary style="cursor: pointer;">testCarIsCombustible</summary>
        <ol>
            <li>Per the diagram, Combustible is an interface that will be used by the GasCar and the HybridCar classes. Create the interface.</li>
            <li>Add the method headers. Remember the methods do not have bodies in interfaces. They describe the desired behavior only.</li>
        </ol>
</details>

<details>
    <summary>testCarIsChargeable</summary>
        <ol>
            <li>Create the corresponding Interface</li>
            <li>Add the method headers. Remember, interfaces do not implement the body of the methods.</li>
        </ol>
</details>

<details>
    <summary>Others</summary>
    There are things repeated in this lab. Testers not mentioned would follow the same testing methodology.
</details>
