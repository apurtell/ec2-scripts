# The Amazon EC2 bucket for images

REGION=${REGION:-us-west-2}
#REGION=${REGION:-us-west-1}
#REGION=${REGION:-us-east-1}

# The version of Hadoop to use and the distribution tarball location

export HADOOP_VERSION=2.6.0
export HADOOP_URL=http://hbase.s3.amazonaws.com/hadoop/hadoop-${HADOOP_VERSION}.tar.gz

# The version of HBase to use and the distribution tarball location

export HBASE_VERSION=0.98.13
export HBASE_URL=http://hbase.s3.amazonaws.com/hbase/hbase-hadoop-${HADOOP_VERSION}/hbase-${HBASE_VERSION}-bin.tar.gz

# YCSB distribution tarball location

export YCSB_URL=http://hbase.s3.amazonaws.com/hbase/hbase-hadoop-${HADOOP_VERSION}/ycsb.tar.gz

# The version of Phoenix to use and the distribution tarball location

export PHOENIX_VERSION=4.3.1
export PHOENIX_URL=http://hbase.s3.amazonaws.com/phoenix/phoenix-hadoop-${HADOOP_VERSION}-hbase-${HBASE_VERSION}/phoenix-${PHOENIX_VERSION}.tar.gz

# The version of Spark to use and the distribution tarball location

export SPARK_VERSION=1.4.0
export SPARK_URL=http://hbase.s3.amazonaws.com/spark/spark-hadoop-${HADOOP_VERSION}/spark-${SPARK_VERSION}-bin.tar.gz

############################################################################

# SSH options used when connecting to EC2 instances.
SSH_OPTS="-q -o StrictHostKeyChecking=no -o ServerAliveInterval=30"

# EC2 command request timeout (seconds)
REQUEST_TIMEOUT=120    # 2 minutes

# Amazon Linux AMI 2014.09 (HVM)
case $REGION in
  'us-east-1') AMI="ami-08842d60";;
  'us-west-1') AMI="ami-cfa8a18a";;
  'us-west-2') AMI="ami-8786c6b7";;
esac

#JAVA_VERSION=7u79
JAVA_VERSION=8u45
JAVA_URL=http://hbase.s3.amazonaws.com/jdk/jdk-${JAVA_VERSION}-linux-x64.tar.gz
