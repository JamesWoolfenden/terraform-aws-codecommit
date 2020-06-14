# diagram.py
from diagrams import Cluster, Diagram, Edge
from diagrams.aws.devtools import Codecommit
from diagrams.aws.integration import SNS
from diagrams.aws.management import Cloudwatch

with Diagram("AWS Codecommit", show=False):
    with Cluster("Module"):
        Codecommit("Code Repository") >> Cloudwatch("CW Change Trigger") >> SNS("SNS Fan Out")
