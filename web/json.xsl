<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="text" encoding="UTF-8" media-type="application/json"/>
<xsl:template match="/icestats">{
  "contact":"<xsl:value-of select="admin"/>",
  "location":"<xsl:value-of select="location"/>",
  "total_listeners":"<xsl:value-of select="listeners"/>",
  "server_id": "<xsl:value-of select="server_id"/>",
  "mounts" : {<xsl:for-each select="source"><xsl:choose><xsl:when test="listeners">
    "<xsl:value-of select="@mount" />": {<xsl:if test="server_name">
      "server_name": "<xsl:value-of select="server_name" />",</xsl:if><xsl:if test="server_description">
      "server_description": "<xsl:value-of select="server_description" />",</xsl:if><xsl:if test="server_type">
      "server_type": "<xsl:value-of select="server_type" />",</xsl:if><xsl:if test="stream_start">
      "stream_start": "<xsl:value-of select="stream_start" />",</xsl:if><xsl:if test="bitrate">
      "bitrate": "<xsl:value-of select="bitrate" />",</xsl:if><xsl:if test="quality">
      "quality": "<xsl:value-of select="quality" />",</xsl:if><xsl:if test="video_quality">
      "video_quality": "<xsl:value-of select="video_quality" />",</xsl:if><xsl:if test="frame_size">
      "frame_size": "<xsl:value-of select="frame_size" />",</xsl:if><xsl:if test="frame_rate">
      "frame_rate": "<xsl:value-of select="frame_rate" />",</xsl:if><xsl:if test="listeners">
      "listeners": "<xsl:value-of select="listeners" />",</xsl:if><xsl:if test="listener_peak">
      "listener_peak": "<xsl:value-of select="listener_peak" />",</xsl:if><xsl:if test="genre">
      "genre": "<xsl:value-of select="genre" />",</xsl:if>
      "mount": "<xsl:value-of select="@mount" />",<xsl:if test="server_url">
      "server_url": "<xsl:value-of select="server_url" />",</xsl:if><xsl:if test="artist">
      "artist": "<xsl:value-of select="artist" />",</xsl:if>
      "title": "<xsl:value-of select="title" />",
      "current_song": "<xsl:if test="artist"><xsl:value-of select="artist" /> - </xsl:if><xsl:value-of select="title" />"</xsl:when></xsl:choose>
    }<xsl:if test="position() != last()">,</xsl:if></xsl:for-each>
  }
}</xsl:template></xsl:stylesheet>
