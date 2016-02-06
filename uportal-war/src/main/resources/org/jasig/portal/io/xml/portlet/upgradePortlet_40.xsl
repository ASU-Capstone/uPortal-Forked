<?xml version="1.0" encoding="UTF-8"?>
<!--

    Licensed to Apereo under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Apereo licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:portlet="https://source.jasig.org/schemas/uportal/io/portlet-definition"
                xmlns:ns2="https://source.jasig.org/schemas/uportal">

    <xsl:output indent="yes"/>

    <xsl:template match="/">
        <portlet-definition xmlns="https://source.jasig.org/schemas/uportal/io/portlet-definition"
                            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                            xsi:schemaLocation="https://source.jasig.org/schemas/uportal/io/portlet-definition https://source.jasig.org/schemas/uportal/io/portlet-definition/portlet-definition-4.3.xsd"
                            version="4.3">

            <!-- 4.3 is backwards-compatible with 4.0. It just has some optional additional features. -->
            <xsl:apply-templates select="*"/>
        </portlet-definition>
    </xsl:template>
    <xsl:template match="portlet:portlet-definition">
        <xsl:copy-of select="child::*"/>
    </xsl:template>
</xsl:stylesheet>
