graph TD;
    User -->A
    subgraph DataCollection
        A(Data Collection)
    end
    subgraph DataPreprocessing
        B(Data Preprocessing)
    end
    subgraph EDA
        C(Exploratory Data Analysis)
    end
    subgraph FeatureEngineering
        D(Feature Engineering)
    end
    subgraph ModelDevelopment
        E(Model Development)
    end
    subgraph ModelEvaluation
        F(Model Evaluation)
    end
    subgraph ModelRefinement
        G(Model Refinement)
    end
    subgraph Deployment
        H(Deployment)
    end

    A --> B
    B --> X{Is data Quality Ok}
    X-->|Yes|C 
    X-->|No|B
    %% C --> D
    C-->Y{is Feature Selection Criteria Met?}
    Y-->|Yes|D
    Y-->|No|C
    D --> E
    %% D -->|Feature Selection Criteria NOT Met| C
    E -->Z{Model Performance Acceptable}
    Z-->|Yes| F
    Z-->|No| G
    %% E -->|Model Performance NOT Acceptable| G
    F --> H
    G --> E
    

    
