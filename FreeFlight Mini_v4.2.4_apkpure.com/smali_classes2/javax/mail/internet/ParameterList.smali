.class public Ljavax/mail/internet/ParameterList;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/ParameterList$1;,
        Ljavax/mail/internet/ParameterList$ParamEnum;,
        Ljavax/mail/internet/ParameterList$Value;
    }
.end annotation


# static fields
.field private static decodeParameters:Z

.field private static decodeParametersStrict:Z

.field private static encodeParameters:Z

.field private static final hex:[C


# instance fields
.field private list:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    sput-boolean v2, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 63
    sput-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 64
    sput-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    .line 68
    :try_start_0
    const-string v3, "mail.mime.encodeparameters"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    :goto_0
    sput-boolean v3, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 71
    const-string v3, "mail.mime.decodeparameters"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    sput-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 74
    const-string v3, "mail.mime.decodeparameters.strict"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    sput-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_3
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Ljavax/mail/internet/ParameterList;->hex:[C

    return-void

    :cond_0
    move v3, v2

    .line 70
    goto :goto_0

    :cond_1
    move v3, v2

    .line 73
    goto :goto_1

    :cond_2
    move v1, v2

    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception v1

    goto :goto_3

    .line 337
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x4

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    .line 133
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v5, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v5}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 140
    .local v2, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    .line 142
    .local v3, "type":I
    if-ne v3, v7, :cond_1

    .line 150
    :cond_0
    return-void

    .line 145
    :cond_1
    int-to-char v5, v3

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_6

    .line 147
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 152
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 153
    new-instance v5, Ljavax/mail/internet/ParseException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Expected parameter name, got \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 155
    :cond_2
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v5

    int-to-char v5, v5

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_3

    .line 160
    new-instance v5, Ljavax/mail/internet/ParseException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Expected \'=\', got \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    :cond_3
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    .line 167
    if-eq v3, v8, :cond_4

    const/4 v5, -0x2

    if-eq v3, v5, :cond_4

    .line 169
    new-instance v5, Ljavax/mail/internet/ParseException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Expected parameter value, got \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    :cond_4
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "value":Ljava/lang/String;
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v5, :cond_5

    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 174
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v5, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-direct {p0, v4}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 177
    :cond_5
    iget-object v5, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 179
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljavax/mail/internet/ParseException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Expected \';\', got \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 17
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v13, Ljavax/mail/internet/ParameterList$Value;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$1;)V

    .line 379
    .local v13, "v":Ljavax/mail/internet/ParameterList$Value;
    move-object/from16 v0, p1

    iput-object v0, v13, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 380
    move-object/from16 v0, p1

    iput-object v0, v13, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 382
    const/16 v14, 0x27

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 383
    .local v8, "i":I
    if-gtz v8, :cond_0

    .line 384
    sget-boolean v14, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v14, :cond_4

    .line 385
    new-instance v14, Ljavax/mail/internet/ParseException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Missing charset in encoded value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 420
    .end local v8    # "i":I
    :catch_0
    move-exception v11

    .line 421
    .local v11, "nex":Ljava/lang/NumberFormatException;
    sget-boolean v14, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v14, :cond_4

    .line 422
    new-instance v14, Ljavax/mail/internet/ParseException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 389
    .end local v11    # "nex":Ljava/lang/NumberFormatException;
    .restart local v8    # "i":I
    :cond_0
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "charset":Ljava/lang/String;
    const/16 v14, 0x27

    add-int/lit8 v15, v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 391
    .local v10, "li":I
    if-gez v10, :cond_1

    .line 392
    sget-boolean v14, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v14, :cond_4

    .line 393
    new-instance v14, Ljavax/mail/internet/ParseException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Missing language in encoded value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 423
    .end local v5    # "charset":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "li":I
    :catch_1
    move-exception v12

    .line 424
    .local v12, "uex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v14, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v14, :cond_4

    .line 425
    new-instance v14, Ljavax/mail/internet/ParseException;

    invoke-virtual {v12}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 397
    .end local v12    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "charset":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "li":I
    :cond_1
    add-int/lit8 v14, v8, 0x1

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "lang":Ljava/lang/String;
    add-int/lit8 v14, v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    new-array v1, v14, [B

    .line 410
    .local v1, "b":[B
    const/4 v8, 0x0

    const/4 v2, 0x0

    .local v2, "bi":I
    move v3, v2

    .end local v2    # "bi":I
    .local v3, "bi":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 411
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 412
    .local v4, "c":C
    const/16 v14, 0x25

    if-ne v4, v14, :cond_2

    .line 413
    add-int/lit8 v14, v8, 0x1

    add-int/lit8 v15, v8, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, "hex":Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v7, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-char v4, v14

    .line 415
    add-int/lit8 v8, v8, 0x2

    .line 417
    .end local v7    # "hex":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bi":I
    .restart local v2    # "bi":I
    int-to-byte v14, v4

    aput-byte v14, v1, v3

    .line 410
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "bi":I
    .restart local v3    # "bi":I
    goto :goto_0

    .line 419
    .end local v4    # "c":C
    :cond_3
    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v5}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v1, v15, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v14, v13, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 430
    .end local v1    # "b":[B
    .end local v3    # "bi":I
    .end local v5    # "charset":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "lang":Ljava/lang/String;
    .end local v10    # "li":I
    :cond_4
    return-object v13

    .line 426
    :catch_2
    move-exception v6

    .line 427
    .local v6, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v14, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-eqz v14, :cond_4

    .line 428
    new-instance v14, Ljavax/mail/internet/ParseException;

    invoke-virtual {v6}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x25

    const/4 v6, 0x0

    .line 348
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    move-object v5, v6

    .line 371
    :goto_0
    return-object v5

    .line 353
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 357
    .local v0, "b":[B
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v7, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 358
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\'\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 360
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    int-to-char v1, v7

    .line 362
    .local v1, "c":C
    const/16 v7, 0x20

    if-le v1, v7, :cond_1

    const/16 v7, 0x7f

    if-ge v1, v7, :cond_1

    const/16 v7, 0x2a

    if-eq v1, v7, :cond_1

    const/16 v7, 0x27

    if-eq v1, v7, :cond_1

    if-eq v1, v10, :cond_1

    const-string v7, "()<>@,;:\\\"\t []/?="

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_2

    .line 364
    :cond_1
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Ljavax/mail/internet/ParameterList;->hex:[C

    shr-int/lit8 v9, v1, 0x4

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Ljavax/mail/internet/ParameterList;->hex:[C

    and-int/lit8 v9, v1, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 359
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 354
    .end local v0    # "b":[B
    .end local v1    # "c":C
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    move-object v5, v6

    .line 355
    goto :goto_0

    .line 366
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "b":[B
    .restart local v1    # "c":C
    .restart local v3    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 368
    .end local v1    # "c":C
    :cond_3
    new-instance v5, Ljavax/mail/internet/ParameterList$Value;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$1;)V

    .line 369
    .local v5, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p1, v5, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 370
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    goto :goto_0
.end method

.method private quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string v0, "()<>@,;:\\\"\t []/?="

    invoke-static {p1, v0}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "v":Ljava/lang/Object;
    instance-of v2, v0, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v2, :cond_0

    .line 206
    check-cast v0, Ljavax/mail/internet/ParameterList$Value;

    .end local v0    # "v":Ljava/lang/Object;
    iget-object v1, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 209
    .local v1, "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    .line 208
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljavax/mail/internet/ParameterList$ParamEnum;

    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$ParamEnum;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 236
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v1, :cond_1

    .line 237
    invoke-direct {p0, p2, p3}, Ljavax/mail/internet/ParameterList;->encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v0

    .line 239
    .local v0, "ev":Ljavax/mail/internet/ParameterList$Value;
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :goto_0
    return-void

    .line 242
    .restart local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 11
    .param p1, "used"    # I

    .prologue
    const/16 v10, 0x4c

    .line 292
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    .local v5, "sb":Ljava/lang/StringBuffer;
    iget-object v8, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 295
    .local v0, "e":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 296
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, "name":Ljava/lang/String;
    iget-object v8, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 299
    .local v6, "v":Ljava/lang/Object;
    instance-of v8, v6, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v8, :cond_1

    .line 300
    check-cast v6, Ljavax/mail/internet/ParameterList$Value;

    .end local v6    # "v":Ljava/lang/Object;
    iget-object v7, v6, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 301
    .local v7, "value":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x2a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    :goto_1
    invoke-direct {p0, v7}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 305
    const-string v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    add-int/lit8 p1, p1, 0x2

    .line 307
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v2, v8, 0x1

    .line 308
    .local v2, "len":I
    add-int v8, p1, v2

    if-le v8, v10, :cond_0

    .line 309
    const-string v8, "\r\n\t"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const/16 p1, 0x8

    .line 312
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 313
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr p1, v8

    .line 314
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, p1

    if-le v8, v10, :cond_3

    .line 316
    invoke-static {p1, v7}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 319
    .local v1, "lastlf":I
    if-ltz v1, :cond_2

    .line 320
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    goto :goto_0

    .end local v1    # "lastlf":I
    .end local v2    # "len":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .restart local v6    # "v":Ljava/lang/Object;
    :cond_1
    move-object v7, v6

    .line 303
    check-cast v7, Ljava/lang/String;

    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_1

    .line 322
    .end local v6    # "v":Ljava/lang/Object;
    .restart local v1    # "lastlf":I
    .restart local v2    # "len":I
    .restart local v4    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr p1, v8

    goto/16 :goto_0

    .line 324
    .end local v1    # "lastlf":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr p1, v8

    goto/16 :goto_0

    .line 329
    .end local v2    # "len":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
