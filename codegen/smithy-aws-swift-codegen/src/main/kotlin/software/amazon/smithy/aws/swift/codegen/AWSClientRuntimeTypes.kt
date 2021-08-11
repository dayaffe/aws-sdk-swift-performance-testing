package software.amazon.smithy.aws.swift.codegen

import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.swift.codegen.model.buildSymbol

object AWSClientRuntimeTypes {
    object EC2Query {
        val Ec2NarrowedResponse = runtimeSymbol("Ec2NarrowedResponse")
    }
    object AWSJSON {
        val XAmzTargetMiddleware = runtimeSymbol("XAmzTargetMiddleware")
    }
    object RestJSON {
        val RestJSONError = runtimeSymbol("RestJSONError")
    }

    object RestXML {
        val RestXMLError = runtimeSymbol("RestXMLError")
    }

    object Signing {
        val SigV4Config = runtimeSymbol("SigV4Config")
        val SigV4Middleware = runtimeSymbol("SigV4Middleware")
    }

    object Core {
        val AWSUserAgentMetadata = runtimeSymbol("AWSUserAgentMetadata")
        val APIMetadata = runtimeSymbol("APIMetadata")
        val UserAgentMiddleware = runtimeSymbol("UserAgentMiddleware")
        val RetrierMiddleware = runtimeSymbol("RetrierMiddleware")
        val EndpointResolverMiddleware = runtimeSymbol("EndpointResolverMiddleware")
        val EndpointResolver = runtimeSymbol("EndpointResolver")
        val CredentialsProvider = runtimeSymbol("AWSCredentialsProvider")
        val AWSClientConfiguration = runtimeSymbol("AWSClientConfiguration")
        val AWSEndpoint = runtimeSymbol("AWSEndpoint")
        val Partition = runtimeSymbol("Partition")
        val ServiceEndpointMetadata = runtimeSymbol("ServiceEndpointMetadata")
        val CredentialScope = runtimeSymbol("CredentialScope")
        val UnknownAWSHttpServiceError = runtimeSymbol("UnknownAWSHttpServiceError")
        val AWSHttpServiceError = runtimeSymbol("AWSHttpServiceError")
    }
}

private fun runtimeSymbol(name: String): Symbol = buildSymbol {
    this.name = name
    this.namespace = AWSSwiftDependency.AWS_CLIENT_RUNTIME.target
    dependency(AWSSwiftDependency.AWS_CLIENT_RUNTIME)
}