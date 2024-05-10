//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//


import ClientRuntime
import SmithyTestUtil
import XCTest
import SmithyXML
@testable import AWSClientRuntime

class Ec2ErrorRequestIdTests: XCTestCase {

    func testEc2ResponseDecodesRequestID() async throws {
        let data = Data("""
        <Ec2Response>
            <Errors>
                <Error>
                    <Code>123</Code>
                    <Message>Sample Error</Message>
                </Error>
            </Errors>
            <RequestID>abcdefg12345</RequestID>
        </Ec2Response>
        """.utf8)
        let httpResponse = HttpResponse(body: .data(data), statusCode: .ok)
        let response = try EC2QueryError(httpResponse: httpResponse, responseReader: Reader.from(data: data), noErrorWrapping: true)
        XCTAssertEqual(response.requestID, "abcdefg12345")
    }

    func testEc2ResponseDecodesRequestId() async throws {
        let data = Data("""
        <Ec2Response>
            <Errors>
                <Error>
                    <Code>123</Code>
                    <Message>Sample Error</Message>
                </Error>
            </Errors>
            <RequestId>abcdefg12345</RequestId>
        </Ec2Response>
        """.utf8)
        let httpResponse = HttpResponse(body: .data(data), statusCode: .ok)
        let response = try EC2QueryError(httpResponse: httpResponse, responseReader: Reader.from(data: data), noErrorWrapping: true)
        XCTAssertEqual(response.requestID, "abcdefg12345")
    }
}
