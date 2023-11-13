from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "postgresql://postgres:123@localhost:5432/last_ritual"

engine = create_engine(SQLALCHEMY_DATABASE_URL)

Base = declarative_base()

Session = sessionmaker(autocommit=False, autoflush=False, bind=engine)


def get_db():
    db = Session()
    try:
        yield db
    finally:
        db.close()


class Vid_tovar(Base):
    __tablename__ = "vid_tovar"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String)


Base.metadata.create_all(bind=engine)