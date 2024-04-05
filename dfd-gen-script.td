graph TD;
    subgraph User
        A(User)
    end
    subgraph Frontend
        B(Interface)
    end
    subgraph Backend
        C(Recommendation Engine)
    end
    subgraph Database
        D(Movie Data)
    end

    A -->|Provides Feedback| B
    B -->|Sends Requests| C
    C -->|Retrieves Data| D
    D -->|Provides Movie Information| B
    C -->|Generates Recommendations| B
    B -->|Displays Recommendations| A
