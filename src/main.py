from fastapi import FastAPI


app = FastAPI(
    title="MultiTasker",
    version="0.0.1",
    description="Test task for Fabrique Studio",

)
app.include_router(router)