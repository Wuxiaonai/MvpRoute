<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <!-- <#include "../common/recipe_manifest.xml.ftl" /> -->

  <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    
    <!-- <@kt.addAllKotlinDependencies /> -->


<#if generateLayout>
   <instantiate from="root/src/res/simplelayout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if generateContract>
    <instantiate from="root/src/app_package/SimpleContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${contarctName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/contract/${contarctName}.java" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${presenterName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/presenter/${presenterName}.java" />

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/view/${activityClass}.java" />
<#else>
     <instantiate from="root/src/app_package/SimpleActivitynotPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</#if>


</recipe>
