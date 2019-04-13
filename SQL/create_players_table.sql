CREATE TYPE account AS ENUM(
    'Free',
    'Developer',
    'Premium'
);

CREATE TABLE "Players" (
    "PlayerID" int   NOT NULL,
    "UserName" VARCHAR(50)   NOT NULL,
    "Email" VARCHAR(100)   NOT NULL,
    "PasswordHash" VARCHAR(1024)   NOT NULL,
    "FirstName" VARCHAR(100)   NOT NULL,
    "LastName" VARCHAR(100)   NOT NULL,
    "CreatedOn" TIMESTAMP   NOT NULL,
    "PlayerAccountType" account NOT NULL,
    CONSTRAINT "pk_Players" PRIMARY KEY (
        "PlayerID"
     ),
    CONSTRAINT "uc_Players_UserName" UNIQUE (
        "UserName"
    ),
    CONSTRAINT "uc_Players_Email" UNIQUE (
        "Email"
    )
);

