.class public Lorg/mortbay/jetty/HttpConnection$Output;
.super Lorg/mortbay/jetty/AbstractGenerator$Output;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Output"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/HttpConnection;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 4

    .prologue
    .line 983
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    .line 984
    iget-object v0, p1, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    check-cast v0, Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v1, p1, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v1}, Lorg/mortbay/jetty/Connector;->getMaxIdleTime()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lorg/mortbay/jetty/AbstractGenerator$Output;-><init>(Lorg/mortbay/jetty/AbstractGenerator;J)V

    .line 985
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_closed:Z

    if-eqz v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    .line 1001
    :goto_1
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    goto :goto_0

    .line 999
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->flushResponse()V

    goto :goto_1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    .line 1012
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 1013
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1021
    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_closed:Z

    if-eqz v1, :cond_0

    .line 1022
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/HttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 1024
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method public sendContent(Ljava/lang/Object;)V
    .locals 18
    .param p1, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    const/4 v13, 0x0

    .line 1038
    .local v13, "resource":Lorg/mortbay/resource/Resource;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->_closed:Z

    if-eqz v14, :cond_0

    .line 1039
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Closed"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1041
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v14}, Lorg/mortbay/jetty/AbstractGenerator;->getContentWritten()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 1042
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "!empty"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1044
    :cond_1
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/mortbay/jetty/HttpContent;

    if-eqz v14, :cond_a

    move-object/from16 v3, p1

    .line 1046
    check-cast v3, Lorg/mortbay/jetty/HttpContent;

    .line 1047
    .local v3, "c":Lorg/mortbay/jetty/HttpContent;
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v4

    .line 1048
    .local v4, "contentType":Lorg/mortbay/io/Buffer;
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v15, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v14, v15}, Lorg/mortbay/jetty/HttpFields;->containsKey(Lorg/mortbay/io/Buffer;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1050
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v14}, Lorg/mortbay/jetty/Response;->getSetCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    .line 1051
    .local v6, "enc":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 1052
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v15, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v14, v15, v4}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 1073
    .end local v6    # "enc":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getContentLength()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 1074
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v15, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getContentLength()J

    move-result-wide v16

    invoke-virtual/range {v14 .. v17}, Lorg/mortbay/jetty/HttpFields;->putLongField(Lorg/mortbay/io/Buffer;J)V

    .line 1075
    :cond_3
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v9

    .line 1076
    .local v9, "lm":Lorg/mortbay/io/Buffer;
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v14

    invoke-virtual {v14}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v10

    .line 1077
    .local v10, "lml":J
    if-eqz v9, :cond_9

    .line 1078
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v15, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v14, v15, v9, v10, v11}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 1085
    :cond_4
    :goto_1
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getBuffer()Lorg/mortbay/io/Buffer;

    move-result-object p1

    .line 1086
    .local p1, "content":Lorg/mortbay/io/Buffer;
    if-nez p1, :cond_5

    .line 1087
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .end local p1    # "content":Lorg/mortbay/io/Buffer;
    :cond_5
    move-object/from16 v14, p1

    .line 1096
    .end local v3    # "c":Lorg/mortbay/jetty/HttpContent;
    .end local v4    # "contentType":Lorg/mortbay/io/Buffer;
    .end local v9    # "lm":Lorg/mortbay/io/Buffer;
    .end local v10    # "lml":J
    :goto_2
    instance-of v15, v14, Lorg/mortbay/io/Buffer;

    if-eqz v15, :cond_b

    .line 1098
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    check-cast v14, Lorg/mortbay/io/Buffer;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lorg/mortbay/jetty/AbstractGenerator;->addContent(Lorg/mortbay/io/Buffer;Z)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    .line 1136
    :goto_3
    return-void

    .line 1055
    .restart local v3    # "c":Lorg/mortbay/jetty/HttpContent;
    .restart local v4    # "contentType":Lorg/mortbay/io/Buffer;
    .restart local v6    # "enc":Ljava/lang/String;
    .local p1, "content":Ljava/lang/Object;
    :cond_6
    instance-of v14, v4, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v14, :cond_8

    move-object v14, v4

    .line 1057
    check-cast v14, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v14, v6}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v5

    .line 1058
    .local v5, "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    if-eqz v5, :cond_7

    .line 1059
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v15, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v14, v15, v5}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    .line 1062
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v15, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ";charset="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ";= "

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1068
    .end local v5    # "content_type":Lorg/mortbay/io/BufferCache$CachedBuffer;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v15, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ";charset="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ";= "

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1079
    .end local v6    # "enc":Ljava/lang/String;
    .restart local v9    # "lm":Lorg/mortbay/io/Buffer;
    .restart local v10    # "lml":J
    :cond_9
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1081
    const-wide/16 v14, -0x1

    cmp-long v14, v10, v14

    if-eqz v14, :cond_4

    .line 1082
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v15, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v14, v15, v10, v11}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    goto/16 :goto_1

    .line 1089
    .end local v3    # "c":Lorg/mortbay/jetty/HttpContent;
    .end local v4    # "contentType":Lorg/mortbay/io/Buffer;
    .end local v9    # "lm":Lorg/mortbay/io/Buffer;
    .end local v10    # "lml":J
    :cond_a
    move-object/from16 v0, p1

    instance-of v14, v0, Lorg/mortbay/resource/Resource;

    if-eqz v14, :cond_10

    move-object/from16 v13, p1

    .line 1091
    check-cast v13, Lorg/mortbay/resource/Resource;

    .line 1092
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v15, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v13}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v16

    invoke-virtual/range {v14 .. v17}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    .line 1093
    invoke-virtual {v13}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .local p1, "content":Ljava/io/InputStream;
    move-object/from16 v14, p1

    goto/16 :goto_2

    .line 1101
    .end local p1    # "content":Ljava/io/InputStream;
    :cond_b
    instance-of v15, v14, Ljava/io/InputStream;

    if-eqz v15, :cond_f

    move-object v7, v14

    .line 1103
    check-cast v7, Ljava/io/InputStream;

    .line 1107
    .local v7, "in":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v14}, Lorg/mortbay/jetty/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v12

    .line 1108
    .local v12, "max":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v14}, Lorg/mortbay/jetty/AbstractGenerator;->getUncheckedBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 1110
    .local v2, "buffer":Lorg/mortbay/io/Buffer;
    invoke-interface {v2, v7, v12}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v8

    .line 1112
    .local v8, "len":I
    :goto_4
    if-ltz v8, :cond_c

    .line 1114
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v14}, Lorg/mortbay/jetty/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1115
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v14}, Lorg/mortbay/jetty/HttpConnection$Output;->flush()V

    .line 1117
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v14}, Lorg/mortbay/jetty/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v12

    .line 1118
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v14}, Lorg/mortbay/jetty/AbstractGenerator;->getUncheckedBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 1119
    invoke-interface {v2, v7, v12}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v8

    goto :goto_4

    .line 1121
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v14}, Lorg/mortbay/jetty/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1122
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mortbay/jetty/HttpConnection$Output;->this$0:Lorg/mortbay/jetty/HttpConnection;

    iget-object v14, v14, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v14}, Lorg/mortbay/jetty/HttpConnection$Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    if-eqz v13, :cond_d

    .line 1127
    invoke-virtual {v13}, Lorg/mortbay/resource/Resource;->release()V

    goto/16 :goto_3

    .line 1129
    :cond_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3

    .line 1126
    .end local v2    # "buffer":Lorg/mortbay/io/Buffer;
    .end local v8    # "len":I
    .end local v12    # "max":I
    :catchall_0
    move-exception v14

    if-eqz v13, :cond_e

    .line 1127
    invoke-virtual {v13}, Lorg/mortbay/resource/Resource;->release()V

    .line 1129
    :goto_5
    throw v14

    :cond_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 1134
    .end local v7    # "in":Ljava/io/InputStream;
    :cond_f
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "unknown content type?"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .local p1, "content":Ljava/lang/Object;
    :cond_10
    move-object/from16 v14, p1

    goto/16 :goto_2
.end method

.method public sendResponse(Lorg/mortbay/io/Buffer;)V
    .locals 1
    .param p1, "response"    # Lorg/mortbay/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    check-cast v0, Lorg/mortbay/jetty/HttpGenerator;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpGenerator;->sendResponse(Lorg/mortbay/io/Buffer;)V

    .line 1031
    return-void
.end method
