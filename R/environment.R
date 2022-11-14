# setup batch environment

svc <- batch()
ce <- svc$create_compute_environment('testenv', type = 'MANAGED',
                                     state = 'ENABLED',
                                     computeResources = list(
                                       type = 'EC2',
                                       allocationStrategy = 'BEST_FIT_PROGRESSIVE',
                                       minvCpus = 0,
                                       maxvCpus = 2,
                                       desiredvCpus = 0,
                                       # updateToLatestImageVersion = TRUE,
                                       subnets = list('subnet-063d6c0880d5c14f3'),
                                       instanceRole = 'ecsInstanceRole',
                                       instanceTypes = list('c5'),
                                       securityGroupIds = list('sg-005b0016f820d46b3')
                                     ),
                                     serviceRole = 'arn:aws:iam::114747781021:role/aws-service-role/batch.amazonaws.com/AWSServiceRoleForBatch'
                                     )
