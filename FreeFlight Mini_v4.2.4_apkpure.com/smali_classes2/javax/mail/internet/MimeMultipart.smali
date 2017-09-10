.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# static fields
.field private static bmparse:Z

.field private static ignoreMissingBoundaryParameter:Z

.field private static ignoreMissingEndBoundary:Z


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 89
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 90
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 91
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    .line 95
    :try_start_0
    const-string v3, "mail.mime.multipart.ignoremissingendboundary"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 100
    const-string v3, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_1
    move v3, v2

    :goto_1
    sput-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 105
    const-string v3, "mail.mime.multipart.bmparse"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_2
    return-void

    :cond_4
    move v3, v1

    .line 98
    goto :goto_0

    :cond_5
    move v3, v1

    .line 103
    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 117
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 125
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 130
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 136
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 164
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Ljavax/mail/internet/ContentType;

    const-string v2, "multipart"

    invoke-direct {v1, v2, p1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 166
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "boundary"

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 189
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 117
    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 125
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 130
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 136
    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 191
    instance-of v1, p1, Ljavax/mail/MessageAware;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 192
    check-cast v1, Ljavax/mail/MessageAware;

    invoke-interface {v1}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 193
    .local v0, "mc":Ljavax/mail/MessageContext;
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 196
    .end local v0    # "mc":Ljavax/mail/MessageContext;
    :cond_0
    instance-of v1, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v1, :cond_1

    .line 198
    check-cast p1, Ljavax/mail/MultipartDataSource;

    .end local p1    # "ds":Ljavax/activation/DataSource;
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 207
    :goto_0
    return-void

    .line 204
    .restart local p1    # "ds":Ljavax/activation/DataSource;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 205
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 206
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized parsebm()V
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    move/from16 v42, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v42, :cond_0

    .line 945
    :goto_0
    monitor-exit p0

    return-void

    .line 635
    :cond_0
    const/16 v25, 0x0

    .line 636
    .local v25, "in":Ljava/io/InputStream;
    const/16 v37, 0x0

    .line 637
    .local v37, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v40, 0x0

    .local v40, "start":J
    const-wide/16 v18, 0x0

    .line 640
    .local v18, "end":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    .line 641
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    move/from16 v42, v0

    if-nez v42, :cond_1

    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v42, v0

    if-nez v42, :cond_1

    move-object/from16 v0, v25

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v42, v0

    if-nez v42, :cond_1

    .line 644
    new-instance v26, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v25    # "in":Ljava/io/InputStream;
    .local v26, "in":Ljava/io/InputStream;
    move-object/from16 v25, v26

    .line 648
    .end local v26    # "in":Ljava/io/InputStream;
    .restart local v25    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    move-object/from16 v0, v25

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v42, v0

    if-eqz v42, :cond_2

    .line 649
    move-object/from16 v0, v25

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object/from16 v37, v0

    .line 651
    :cond_2
    new-instance v15, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-direct {v15, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 652
    .local v15, "cType":Ljavax/mail/internet/ContentType;
    const/4 v11, 0x0

    .line 653
    .local v11, "boundary":Ljava/lang/String;
    const-string v42, "boundary"

    move-object/from16 v0, v42

    invoke-virtual {v15, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 654
    .local v12, "bp":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 655
    new-instance v42, Ljava/lang/StringBuffer;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    const-string v43, "--"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    .line 661
    :cond_3
    :try_start_3
    new-instance v31, Lcom/sun/mail/util/LineInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 663
    .local v31, "lin":Lcom/sun/mail/util/LineInputStream;
    const/16 v33, 0x0

    .line 664
    .local v33, "lineSeparator":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual/range {v31 .. v31}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v32

    .local v32, "line":Ljava/lang/String;
    if-eqz v32, :cond_6

    .line 672
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v42

    add-int/lit8 v24, v42, -0x1

    .local v24, "i":I
    :goto_2
    if-ltz v24, :cond_5

    .line 673
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 674
    .local v14, "c":C
    const/16 v42, 0x20

    move/from16 v0, v42

    if-eq v14, v0, :cond_8

    const/16 v42, 0x9

    move/from16 v0, v42

    if-eq v14, v0, :cond_8

    .line 677
    .end local v14    # "c":C
    :cond_5
    const/16 v42, 0x0

    add-int/lit8 v43, v24, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 678
    if-eqz v11, :cond_9

    .line 679
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_a

    .line 712
    .end local v24    # "i":I
    :cond_6
    :goto_3
    if-nez v32, :cond_d

    .line 713
    new-instance v42, Ljavax/mail/MessagingException;

    const-string v43, "Missing start boundary"

    invoke-direct/range {v42 .. v43}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 934
    .end local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v32    # "line":Ljava/lang/String;
    .end local v33    # "lineSeparator":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 935
    .local v29, "ioex":Ljava/io/IOException;
    :try_start_4
    new-instance v42, Ljavax/mail/MessagingException;

    const-string v43, "IO Error"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v42
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 937
    .end local v29    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v42

    .line 938
    :try_start_5
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 942
    :goto_4
    :try_start_6
    throw v42
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 632
    .end local v11    # "boundary":Ljava/lang/String;
    .end local v12    # "bp":Ljava/lang/String;
    .end local v15    # "cType":Ljavax/mail/internet/ContentType;
    .end local v18    # "end":J
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v37    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v40    # "start":J
    :catchall_1
    move-exception v42

    monitor-exit p0

    throw v42

    .line 645
    .restart local v18    # "end":J
    .restart local v25    # "in":Ljava/io/InputStream;
    .restart local v37    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v40    # "start":J
    :catch_1
    move-exception v20

    .line 646
    .local v20, "ex":Ljava/lang/Exception;
    :try_start_7
    new-instance v42, Ljavax/mail/MessagingException;

    const-string v43, "No inputstream from datasource"

    invoke-direct/range {v42 .. v43}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 656
    .end local v20    # "ex":Ljava/lang/Exception;
    .restart local v11    # "boundary":Ljava/lang/String;
    .restart local v12    # "bp":Ljava/lang/String;
    .restart local v15    # "cType":Ljavax/mail/internet/ContentType;
    :cond_7
    sget-boolean v42, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v42, :cond_3

    .line 657
    new-instance v42, Ljavax/mail/MessagingException;

    const-string v43, "Missing boundary parameter"

    invoke-direct/range {v42 .. v43}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 672
    .restart local v14    # "c":C
    .restart local v24    # "i":I
    .restart local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v32    # "line":Ljava/lang/String;
    .restart local v33    # "lineSeparator":Ljava/lang/String;
    :cond_8
    add-int/lit8 v24, v24, -0x1

    goto :goto_2

    .line 687
    .end local v14    # "c":C
    :cond_9
    :try_start_8
    const-string v42, "--"

    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_a

    .line 688
    move-object/from16 v11, v32

    .line 689
    goto :goto_3

    .line 694
    :cond_a
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v42

    if-lez v42, :cond_4

    .line 697
    if-nez v33, :cond_b

    .line 699
    :try_start_9
    const-string v42, "line.separator"

    const-string v43, "\n"

    invoke-static/range {v42 .. v43}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v33

    .line 706
    :cond_b
    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    move-object/from16 v42, v0

    if-nez v42, :cond_c

    .line 707
    new-instance v42, Ljava/lang/StringBuffer;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    goto/16 :goto_1

    .line 701
    :catch_2
    move-exception v20

    .line 702
    .local v20, "ex":Ljava/lang/SecurityException;
    const-string v33, "\n"

    goto :goto_5

    .line 709
    .end local v20    # "ex":Ljava/lang/SecurityException;
    :cond_c
    new-instance v42, Ljava/lang/StringBuffer;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    goto/16 :goto_1

    .line 716
    .end local v24    # "i":I
    :cond_d
    invoke-static {v11}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 717
    .local v10, "bndbytes":[B
    array-length v9, v10

    .line 724
    .local v9, "bl":I
    const/16 v42, 0x100

    move/from16 v0, v42

    new-array v8, v0, [I

    .line 725
    .local v8, "bcs":[I
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_6
    move/from16 v0, v24

    if-ge v0, v9, :cond_e

    .line 726
    aget-byte v42, v10, v24

    add-int/lit8 v43, v24, 0x1

    aput v43, v8, v42

    .line 725
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 729
    :cond_e
    new-array v0, v9, [I

    move-object/from16 v22, v0

    .line 731
    .local v22, "gss":[I
    move/from16 v24, v9

    :goto_7
    if-lez v24, :cond_11

    .line 733
    add-int/lit8 v30, v9, -0x1

    .local v30, "j":I
    :goto_8
    move/from16 v0, v30

    move/from16 v1, v24

    if-lt v0, v1, :cond_f

    .line 735
    aget-byte v42, v10, v30

    sub-int v43, v30, v24

    aget-byte v43, v10, v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_10

    .line 737
    add-int/lit8 v42, v30, -0x1

    aput v24, v22, v42

    .line 733
    add-int/lit8 v30, v30, -0x1

    goto :goto_8

    .line 744
    :cond_f
    :goto_9
    if-lez v30, :cond_10

    .line 745
    add-int/lit8 v30, v30, -0x1

    aput v24, v22, v30

    goto :goto_9

    .line 731
    :cond_10
    add-int/lit8 v24, v24, -0x1

    goto :goto_7

    .line 747
    .end local v30    # "j":I
    :cond_11
    add-int/lit8 v42, v9, -0x1

    const/16 v43, 0x1

    aput v43, v22, v42

    .line 753
    const/16 v16, 0x0

    .line 755
    .local v16, "done":Z
    :goto_a
    if-nez v16, :cond_15

    .line 756
    const/16 v23, 0x0

    .line 757
    .local v23, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v37, :cond_16

    .line 758
    invoke-interface/range {v37 .. v37}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v40

    .line 760
    :cond_12
    invoke-virtual/range {v31 .. v31}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_13

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v42

    if-gtz v42, :cond_12

    .line 762
    :cond_13
    if-nez v32, :cond_17

    .line 763
    sget-boolean v42, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v42, :cond_14

    .line 764
    new-instance v42, Ljavax/mail/MessagingException;

    const-string v43, "missing multipart end boundary"

    invoke-direct/range {v42 .. v43}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 767
    :cond_14
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 938
    .end local v23    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_15
    :try_start_b
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 944
    :goto_b
    const/16 v42, 0x1

    :try_start_c
    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 772
    .restart local v23    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_16
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v23

    .line 775
    :cond_17
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->markSupported()Z

    move-result v42

    if-nez v42, :cond_18

    .line 776
    new-instance v42, Ljavax/mail/MessagingException;

    const-string v43, "Stream doesn\'t support mark"

    invoke-direct/range {v42 .. v43}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 778
    :cond_18
    const/4 v13, 0x0

    .line 780
    .local v13, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v37, :cond_19

    .line 781
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 795
    .restart local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    :goto_c
    new-array v0, v9, [B

    move-object/from16 v28, v0

    .line 796
    .local v28, "inbuf":[B
    new-array v0, v9, [B

    move-object/from16 v36, v0

    .line 797
    .local v36, "previnbuf":[B
    const/16 v27, 0x0

    .line 798
    .local v27, "inSize":I
    const/16 v35, 0x0

    .line 800
    .local v35, "prevSize":I
    const/16 v21, 0x1

    .line 806
    .local v21, "first":Z
    :goto_d
    add-int/lit8 v42, v9, 0x4

    move/from16 v0, v42

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v42, v0

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 807
    const/16 v17, 0x0

    .line 808
    .local v17, "eolLen":I
    const/16 v42, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v27

    .line 809
    move/from16 v0, v27

    if-ge v0, v9, :cond_1d

    .line 811
    sget-boolean v42, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v42, :cond_1a

    .line 812
    new-instance v42, Ljavax/mail/MessagingException;

    const-string v43, "missing multipart end boundary"

    invoke-direct/range {v42 .. v43}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 783
    .end local v17    # "eolLen":I
    .end local v21    # "first":Z
    .end local v27    # "inSize":I
    .end local v28    # "inbuf":[B
    .end local v35    # "prevSize":I
    .end local v36    # "previnbuf":[B
    :cond_19
    invoke-interface/range {v37 .. v37}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    goto :goto_c

    .line 814
    .restart local v17    # "eolLen":I
    .restart local v21    # "first":Z
    .restart local v27    # "inSize":I
    .restart local v28    # "inbuf":[B
    .restart local v35    # "prevSize":I
    .restart local v36    # "previnbuf":[B
    :cond_1a
    if-eqz v37, :cond_1b

    .line 815
    invoke-interface/range {v37 .. v37}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    .line 816
    :cond_1b
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 817
    const/16 v16, 0x1

    .line 920
    :cond_1c
    :goto_e
    if-eqz v37, :cond_2d

    .line 921
    move-object/from16 v0, v37

    move-wide/from16 v1, v40

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v34

    .line 932
    .local v34, "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    goto/16 :goto_a

    .line 822
    .end local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_1d
    add-int/lit8 v24, v9, -0x1

    :goto_10
    if-ltz v24, :cond_1e

    .line 823
    aget-byte v42, v28, v24

    aget-byte v43, v10, v24

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_23

    .line 826
    :cond_1e
    if-gez v24, :cond_28

    .line 827
    const/16 v17, 0x0

    .line 828
    if-nez v21, :cond_20

    .line 831
    add-int/lit8 v42, v35, -0x1

    aget-byte v6, v36, v42

    .line 832
    .local v6, "b":I
    const/16 v42, 0xd

    move/from16 v0, v42

    if-eq v6, v0, :cond_1f

    const/16 v42, 0xa

    move/from16 v0, v42

    if-ne v6, v0, :cond_20

    .line 833
    :cond_1f
    const/16 v17, 0x1

    .line 834
    const/16 v42, 0xa

    move/from16 v0, v42

    if-ne v6, v0, :cond_20

    const/16 v42, 0x2

    move/from16 v0, v35

    move/from16 v1, v42

    if-lt v0, v1, :cond_20

    .line 835
    add-int/lit8 v42, v35, -0x2

    aget-byte v6, v36, v42

    .line 836
    const/16 v42, 0xd

    move/from16 v0, v42

    if-ne v6, v0, :cond_20

    .line 837
    const/16 v17, 0x2

    .line 841
    .end local v6    # "b":I
    :cond_20
    if-nez v21, :cond_21

    if-lez v17, :cond_27

    .line 842
    :cond_21
    if-eqz v37, :cond_22

    .line 845
    invoke-interface/range {v37 .. v37}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v42

    int-to-long v0, v9

    move-wide/from16 v44, v0

    sub-long v42, v42, v44

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v18, v42, v44

    .line 848
    :cond_22
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 849
    .local v7, "b2":I
    const/16 v42, 0x2d

    move/from16 v0, v42

    if-ne v7, v0, :cond_24

    .line 850
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v42

    const/16 v43, 0x2d

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_24

    .line 851
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 852
    const/16 v16, 0x1

    .line 853
    goto/16 :goto_e

    .line 822
    .end local v7    # "b2":I
    :cond_23
    add-int/lit8 v24, v24, -0x1

    goto :goto_10

    .line 857
    .restart local v7    # "b2":I
    :cond_24
    :goto_11
    const/16 v42, 0x20

    move/from16 v0, v42

    if-eq v7, v0, :cond_25

    const/16 v42, 0x9

    move/from16 v0, v42

    if-ne v7, v0, :cond_26

    .line 858
    :cond_25
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v7

    goto :goto_11

    .line 860
    :cond_26
    const/16 v42, 0xa

    move/from16 v0, v42

    if-eq v7, v0, :cond_1c

    .line 862
    const/16 v42, 0xd

    move/from16 v0, v42

    if-ne v7, v0, :cond_27

    .line 863
    const/16 v42, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 864
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v42

    const/16 v43, 0xa

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_1c

    .line 865
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_e

    .line 869
    .end local v7    # "b2":I
    :cond_27
    const/16 v24, 0x0

    .line 879
    :cond_28
    add-int/lit8 v42, v24, 0x1

    aget-byte v43, v28, v24

    and-int/lit8 v43, v43, 0x7f

    aget v43, v8, v43

    sub-int v42, v42, v43

    aget v43, v22, v24

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 881
    .local v38, "skip":I
    const/16 v42, 0x2

    move/from16 v0, v38

    move/from16 v1, v42

    if-ge v0, v1, :cond_2b

    .line 885
    if-nez v37, :cond_29

    const/16 v42, 0x1

    move/from16 v0, v35

    move/from16 v1, v42

    if-le v0, v1, :cond_29

    .line 886
    const/16 v42, 0x0

    add-int/lit8 v43, v35, -0x1

    move-object/from16 v0, v36

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 887
    :cond_29
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    .line 888
    const-wide/16 v42, 0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 889
    const/16 v42, 0x1

    move/from16 v0, v35

    move/from16 v1, v42

    if-lt v0, v1, :cond_2a

    .line 891
    const/16 v42, 0x0

    add-int/lit8 v43, v35, -0x1

    aget-byte v43, v36, v43

    aput-byte v43, v36, v42

    .line 892
    const/16 v42, 0x1

    const/16 v43, 0x0

    aget-byte v43, v28, v43

    aput-byte v43, v36, v42

    .line 893
    const/16 v35, 0x2

    .line 913
    :goto_12
    const/16 v21, 0x0

    .line 914
    goto/16 :goto_d

    .line 896
    :cond_2a
    const/16 v42, 0x0

    const/16 v43, 0x0

    aget-byte v43, v28, v43

    aput-byte v43, v36, v42

    .line 897
    const/16 v35, 0x1

    .line 899
    goto :goto_12

    .line 902
    :cond_2b
    if-lez v35, :cond_2c

    if-nez v37, :cond_2c

    .line 903
    const/16 v42, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v42

    move/from16 v2, v35

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 905
    :cond_2c
    move/from16 v35, v38

    .line 906
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    .line 907
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 909
    move-object/from16 v39, v28

    .line 910
    .local v39, "tmp":[B
    move-object/from16 v28, v36

    .line 911
    move-object/from16 v36, v39

    goto :goto_12

    .line 924
    .end local v38    # "skip":I
    .end local v39    # "tmp":[B
    :cond_2d
    sub-int v42, v35, v17

    if-lez v42, :cond_2e

    .line 925
    const/16 v42, 0x0

    sub-int v43, v35, v17

    move-object/from16 v0, v36

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 928
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move/from16 v42, v0

    if-nez v42, :cond_2f

    if-lez v27, :cond_2f

    .line 929
    const/16 v42, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v42

    move/from16 v2, v27

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 930
    :cond_2f
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v34

    .restart local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    goto/16 :goto_f

    .line 939
    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "eolLen":I
    .end local v21    # "first":Z
    .end local v23    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v27    # "inSize":I
    .end local v28    # "inbuf":[B
    .end local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v35    # "prevSize":I
    .end local v36    # "previnbuf":[B
    :catch_3
    move-exception v42

    goto/16 :goto_b

    .end local v8    # "bcs":[I
    .end local v9    # "bl":I
    .end local v10    # "bndbytes":[B
    .end local v16    # "done":Z
    .end local v22    # "gss":[I
    .end local v24    # "i":I
    .end local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v32    # "line":Ljava/lang/String;
    .end local v33    # "lineSeparator":Ljava/lang/String;
    :catch_4
    move-exception v43

    goto/16 :goto_4
.end method


# virtual methods
.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 960
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 977
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 243
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .locals 5
    .param p1, "CID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 257
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0

    .line 258
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 259
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    .line 260
    .local v2, "part":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    .end local v2    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 258
    .restart local v2    # "part":Ljavax/mail/internet/MimeBodyPart;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v2    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 255
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 230
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreamble()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 296
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 283
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    return v0
.end method

.method protected declared-synchronized parse()V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    move/from16 v34, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v34, :cond_0

    .line 616
    :goto_0
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    :try_start_1
    sget-boolean v34, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v34, :cond_1

    .line 383
    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v34

    monitor-exit p0

    throw v34

    .line 387
    :cond_1
    const/16 v24, 0x0

    .line 388
    .local v24, "in":Ljava/io/InputStream;
    const/16 v31, 0x0

    .line 389
    .local v31, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v32, 0x0

    .local v32, "start":J
    const-wide/16 v18, 0x0

    .line 392
    .local v18, "end":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    .line 393
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    move/from16 v34, v0

    if-nez v34, :cond_2

    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v34, v0

    if-nez v34, :cond_2

    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v34, v0

    if-nez v34, :cond_2

    .line 396
    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v24    # "in":Ljava/io/InputStream;
    .local v25, "in":Ljava/io/InputStream;
    move-object/from16 v24, v25

    .line 400
    .end local v25    # "in":Ljava/io/InputStream;
    .restart local v24    # "in":Ljava/io/InputStream;
    :cond_2
    :try_start_3
    move-object/from16 v0, v24

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v34, v0

    if-eqz v34, :cond_3

    .line 401
    move-object/from16 v0, v24

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object/from16 v31, v0

    .line 403
    :cond_3
    new-instance v15, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-direct {v15, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 404
    .local v15, "cType":Ljavax/mail/internet/ContentType;
    const/4 v11, 0x0

    .line 405
    .local v11, "boundary":Ljava/lang/String;
    const-string v34, "boundary"

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 406
    .local v12, "bp":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 407
    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "--"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    .line 413
    :cond_4
    :try_start_4
    new-instance v27, Lcom/sun/mail/util/LineInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 415
    .local v27, "lin":Lcom/sun/mail/util/LineInputStream;
    const/16 v29, 0x0

    .line 416
    .local v29, "lineSeparator":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual/range {v27 .. v27}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, "line":Ljava/lang/String;
    if-eqz v28, :cond_7

    .line 424
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v23, v34, -0x1

    .local v23, "i":I
    :goto_2
    if-ltz v23, :cond_6

    .line 425
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 426
    .local v14, "c":C
    const/16 v34, 0x20

    move/from16 v0, v34

    if-eq v14, v0, :cond_9

    const/16 v34, 0x9

    move/from16 v0, v34

    if-eq v14, v0, :cond_9

    .line 429
    .end local v14    # "c":C
    :cond_6
    const/16 v34, 0x0

    add-int/lit8 v35, v23, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 430
    if-eqz v11, :cond_a

    .line 431
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 464
    .end local v23    # "i":I
    :cond_7
    :goto_3
    if-nez v28, :cond_e

    .line 465
    new-instance v34, Ljavax/mail/MessagingException;

    const-string v35, "Missing start boundary"

    invoke-direct/range {v34 .. v35}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v34
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 605
    .end local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "line":Ljava/lang/String;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    :catch_0
    move-exception v26

    .line 606
    .local v26, "ioex":Ljava/io/IOException;
    :try_start_5
    new-instance v34, Ljavax/mail/MessagingException;

    const-string v35, "IO Error"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v34
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 608
    .end local v26    # "ioex":Ljava/io/IOException;
    :catchall_1
    move-exception v34

    .line 609
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 613
    :goto_4
    :try_start_7
    throw v34

    .line 397
    .end local v11    # "boundary":Ljava/lang/String;
    .end local v12    # "bp":Ljava/lang/String;
    .end local v15    # "cType":Ljavax/mail/internet/ContentType;
    :catch_1
    move-exception v21

    .line 398
    .local v21, "ex":Ljava/lang/Exception;
    new-instance v34, Ljavax/mail/MessagingException;

    const-string v35, "No inputstream from datasource"

    invoke-direct/range {v34 .. v35}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 408
    .end local v21    # "ex":Ljava/lang/Exception;
    .restart local v11    # "boundary":Ljava/lang/String;
    .restart local v12    # "bp":Ljava/lang/String;
    .restart local v15    # "cType":Ljavax/mail/internet/ContentType;
    :cond_8
    sget-boolean v34, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v34, :cond_4

    .line 409
    new-instance v34, Ljavax/mail/MessagingException;

    const-string v35, "Missing boundary parameter"

    invoke-direct/range {v34 .. v35}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v34
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 424
    .restart local v14    # "c":C
    .restart local v23    # "i":I
    .restart local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v28    # "line":Ljava/lang/String;
    .restart local v29    # "lineSeparator":Ljava/lang/String;
    :cond_9
    add-int/lit8 v23, v23, -0x1

    goto :goto_2

    .line 439
    .end local v14    # "c":C
    :cond_a
    :try_start_8
    const-string v34, "--"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 440
    move-object/from16 v11, v28

    .line 441
    goto :goto_3

    .line 446
    :cond_b
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v34

    if-lez v34, :cond_5

    .line 449
    if-nez v29, :cond_c

    .line 451
    :try_start_9
    const-string v34, "line.separator"

    const-string v35, "\n"

    invoke-static/range {v34 .. v35}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v29

    .line 458
    :cond_c
    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    move-object/from16 v34, v0

    if-nez v34, :cond_d

    .line 459
    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    goto/16 :goto_1

    .line 453
    :catch_2
    move-exception v21

    .line 454
    .local v21, "ex":Ljava/lang/SecurityException;
    const-string v29, "\n"

    goto :goto_5

    .line 461
    .end local v21    # "ex":Ljava/lang/SecurityException;
    :cond_d
    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    goto/16 :goto_1

    .line 468
    .end local v23    # "i":I
    :cond_e
    invoke-static {v11}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 469
    .local v9, "bndbytes":[B
    array-length v8, v9

    .line 475
    .local v8, "bl":I
    const/16 v16, 0x0

    .line 477
    .local v16, "done":Z
    :goto_6
    if-nez v16, :cond_12

    .line 478
    const/16 v22, 0x0

    .line 479
    .local v22, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v31, :cond_13

    .line 480
    invoke-interface/range {v31 .. v31}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v32

    .line 482
    :cond_f
    invoke-virtual/range {v27 .. v27}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_10

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v34

    if-gtz v34, :cond_f

    .line 484
    :cond_10
    if-nez v28, :cond_14

    .line 485
    sget-boolean v34, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v34, :cond_11

    .line 486
    new-instance v34, Ljavax/mail/MessagingException;

    const-string v35, "missing multipart end boundary"

    invoke-direct/range {v34 .. v35}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 489
    :cond_11
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 609
    .end local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_12
    :try_start_b
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 615
    :goto_7
    const/16 v34, 0x1

    :try_start_c
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 494
    .restart local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_13
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v22

    .line 497
    :cond_14
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->markSupported()Z

    move-result v34

    if-nez v34, :cond_15

    .line 498
    new-instance v34, Ljavax/mail/MessagingException;

    const-string v35, "Stream doesn\'t support mark"

    invoke-direct/range {v34 .. v35}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 500
    :cond_15
    const/4 v13, 0x0

    .line 502
    .local v13, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v31, :cond_19

    .line 503
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    .restart local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    :goto_8
    const/4 v10, 0x1

    .line 509
    .local v10, "bol":Z
    const/16 v17, -0x1

    .local v17, "eol1":I
    const/16 v20, -0x1

    .line 515
    .local v20, "eol2":I
    :cond_16
    :goto_9
    if-eqz v10, :cond_20

    .line 521
    add-int/lit8 v34, v8, 0x4

    move/from16 v0, v34

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v34, v0

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 523
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_a
    move/from16 v0, v23

    if-ge v0, v8, :cond_17

    .line 524
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v34

    aget-byte v35, v9, v23

    move/from16 v0, v35

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1a

    .line 526
    :cond_17
    move/from16 v0, v23

    if-ne v0, v8, :cond_1e

    .line 528
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 529
    .local v7, "b2":I
    const/16 v34, 0x2d

    move/from16 v0, v34

    if-ne v7, v0, :cond_1b

    .line 530
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v34

    const/16 v35, 0x2d

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1b

    .line 531
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 532
    const/16 v16, 0x1

    .line 599
    .end local v7    # "b2":I
    .end local v23    # "i":I
    :cond_18
    :goto_b
    if-eqz v31, :cond_27

    .line 600
    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v30

    .line 603
    .local v30, "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    goto/16 :goto_6

    .line 505
    .end local v10    # "bol":Z
    .end local v17    # "eol1":I
    .end local v20    # "eol2":I
    .end local v30    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_19
    invoke-interface/range {v31 .. v31}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    goto :goto_8

    .line 523
    .restart local v10    # "bol":Z
    .restart local v17    # "eol1":I
    .restart local v20    # "eol2":I
    .restart local v23    # "i":I
    :cond_1a
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 537
    .restart local v7    # "b2":I
    :cond_1b
    :goto_d
    const/16 v34, 0x20

    move/from16 v0, v34

    if-eq v7, v0, :cond_1c

    const/16 v34, 0x9

    move/from16 v0, v34

    if-ne v7, v0, :cond_1d

    .line 538
    :cond_1c
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v7

    goto :goto_d

    .line 540
    :cond_1d
    const/16 v34, 0xa

    move/from16 v0, v34

    if-eq v7, v0, :cond_18

    .line 542
    const/16 v34, 0xd

    move/from16 v0, v34

    if-ne v7, v0, :cond_1e

    .line 543
    const/16 v34, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 544
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v34

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_18

    .line 545
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->reset()V

    goto :goto_b

    .line 550
    .end local v7    # "b2":I
    :cond_1e
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->reset()V

    .line 554
    if-eqz v13, :cond_20

    const/16 v34, -0x1

    move/from16 v0, v17

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    .line 555
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 556
    const/16 v34, -0x1

    move/from16 v0, v20

    move/from16 v1, v34

    if-eq v0, v1, :cond_1f

    .line 557
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 558
    :cond_1f
    const/16 v20, -0x1

    move/from16 v17, v20

    .line 563
    .end local v23    # "i":I
    :cond_20
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v6

    .local v6, "b":I
    if-gez v6, :cond_22

    .line 564
    sget-boolean v34, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v34, :cond_21

    .line 565
    new-instance v34, Ljavax/mail/MessagingException;

    const-string v35, "missing multipart end boundary"

    invoke-direct/range {v34 .. v35}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 567
    :cond_21
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 568
    const/16 v16, 0x1

    .line 569
    goto/16 :goto_b

    .line 576
    :cond_22
    const/16 v34, 0xd

    move/from16 v0, v34

    if-eq v6, v0, :cond_23

    const/16 v34, 0xa

    move/from16 v0, v34

    if-ne v6, v0, :cond_26

    .line 577
    :cond_23
    const/4 v10, 0x1

    .line 578
    if-eqz v31, :cond_24

    .line 579
    invoke-interface/range {v31 .. v31}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v34

    const-wide/16 v36, 0x1

    sub-long v18, v34, v36

    .line 580
    :cond_24
    move/from16 v17, v6

    .line 581
    const/16 v34, 0xd

    move/from16 v0, v34

    if-ne v6, v0, :cond_16

    .line 582
    const/16 v34, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 583
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v34, 0xa

    move/from16 v0, v34

    if-ne v6, v0, :cond_25

    .line 584
    move/from16 v20, v6

    goto/16 :goto_9

    .line 586
    :cond_25
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_9

    .line 589
    :cond_26
    const/4 v10, 0x0

    .line 590
    if-eqz v13, :cond_16

    .line 591
    invoke-virtual {v13, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_9

    .line 602
    .end local v6    # "b":I
    :cond_27
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v30

    .restart local v30    # "part":Ljavax/mail/internet/MimeBodyPart;
    goto/16 :goto_c

    .line 610
    .end local v10    # "bol":Z
    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "eol1":I
    .end local v20    # "eol2":I
    .end local v22    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v30    # "part":Ljavax/mail/internet/MimeBodyPart;
    :catch_3
    move-exception v34

    goto/16 :goto_7

    .end local v8    # "bl":I
    .end local v9    # "bndbytes":[B
    .end local v16    # "done":Z
    .end local v27    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "line":Ljava/lang/String;
    .end local v29    # "lineSeparator":Ljava/lang/String;
    :catch_4
    move-exception v35

    goto/16 :goto_4
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .param p1, "preamble"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 311
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 218
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 344
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljavax/mail/internet/ContentType;

    iget-object v6, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v6, "boundary"

    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "boundary":Ljava/lang/String;
    new-instance v2, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v2, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 349
    .local v2, "los":Lcom/sun/mail/util/LineOutputStream;
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 350
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 351
    .local v3, "pb":[B
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 353
    array-length v4, v3

    if-lez v4, :cond_0

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 355
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 359
    .end local v3    # "pb":[B
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 360
    invoke-virtual {v2, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 361
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v4, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 362
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 367
    return-void
.end method
