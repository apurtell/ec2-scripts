# The Amazon EC2 bucket for images

REGION=${REGION:-us-west-2}
#REGION=${REGION:-us-west-1}
#REGION=${REGION:-us-east-1}

# The version of Hadoop to use and the distribution tarball location

export HADOOP_VERSION=2.4.1
#export HADOOP_VERSION=2.2.0
export HADOOP_URL=http://hbase.s3.amazonaws.com/hadoop/hadoop-${HADOOP_VERSION}.tar.gz

# The version of HBase to use and the distribution tarball location

#export HBASE_VERSION=0.98.0
#export HBASE_VERSION=0.98.6.1
#export HBASE_VERSION=0.98.7
export HBASE_VERSION=0.98.8
export HBASE_URL=http://hbase.s3.amazonaws.com/hbase/hbase-hadoop-${HADOOP_VERSION}/hbase-${HBASE_VERSION}-bin.tar.gz

# YCSB distribution tarball location

export YCSB_URL=http://hbase.s3.amazonaws.com/hbase/hbase-hadoop-${HADOOP_VERSION}/ycsb.tar.gz

############################################################################

# SSH options used when connecting to EC2 instances.
SSH_OPTS=`echo -q -i $EC2_PRIVATE_KEY -o StrictHostKeyChecking=no -o ServerAliveInterval=30`

# EC2 command request timeout (seconds)
REQUEST_TIMEOUT=120    # 2 minutes

# Global tool options
TOOL_OPTS=`echo --region $REGION --aws-access-key $AWS_ACCESS_KEY --aws-secret-key $AWS_SECRET_KEY --request-timeout $REQUEST_TIMEOUT`

# Amazon Linux AMI 2014.09 (HVM)
case $REGION in
  'us-east-1') AMI="ami-08842d60";;
  'us-west-1') AMI="ami-cfa8a18a";;
  'us-west-2') AMI="ami-8786c6b7";;
esac

JAVA_VERSION=7u67
#JAVA_VERSION=8u20
JAVA_URL=http://hbase.s3.amazonaws.com/jdk/jdk-${JAVA_VERSION}-linux-x64.tar.gz
