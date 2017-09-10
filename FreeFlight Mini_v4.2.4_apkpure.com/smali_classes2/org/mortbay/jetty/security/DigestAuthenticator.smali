.class public Lorg/mortbay/jetty/security/DigestAuthenticator;
.super Ljava/lang/Object;
.source "DigestAuthenticator.java"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;
    }
.end annotation


# instance fields
.field protected maxNonceAge:J

.field protected nonceSecret:J

.field protected useStale:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    .line 259
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 17
    .param p1, "realm"    # Lorg/mortbay/jetty/security/UserRealm;
    .param p2, "pathInContext"    # Ljava/lang/String;
    .param p3, "request"    # Lorg/mortbay/jetty/Request;
    .param p4, "response"    # Lorg/mortbay/jetty/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v10, 0x0

    .line 58
    .local v10, "stale":Z
    const/4 v13, 0x0

    .line 59
    .local v13, "user":Ljava/security/Principal;
    const-string v14, "Authorization"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "credentials":Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 63
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Credentials: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 64
    :cond_0
    new-instance v12, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string v14, "=, "

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v12, v5, v14, v15, v0}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 68
    .local v12, "tokenizer":Lorg/mortbay/util/QuotedStringTokenizer;
    new-instance v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;

    invoke-virtual/range {p3 .. p3}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;-><init>(Ljava/lang/String;)V

    .line 69
    .local v6, "digest":Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;
    const/4 v7, 0x0

    .line 70
    .local v7, "last":Ljava/lang/String;
    const/4 v9, 0x0

    .line 73
    .local v9, "name":Ljava/lang/String;
    :cond_1
    :goto_0
    :sswitch_0
    invoke-virtual {v12}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 75
    invoke-virtual {v12}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "tok":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 78
    .local v4, "c":C
    :goto_1
    sparse-switch v4, :sswitch_data_0

    .line 90
    move-object v7, v11

    .line 91
    if-eqz v9, :cond_1

    .line 93
    const-string v14, "username"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 94
    iput-object v11, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    .line 109
    :cond_2
    :goto_2
    const/4 v9, 0x0

    goto :goto_0

    .line 76
    .end local v4    # "c":C
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 81
    .restart local v4    # "c":C
    :sswitch_1
    move-object v9, v7

    .line 82
    move-object v7, v11

    .line 83
    goto :goto_0

    .line 85
    :sswitch_2
    const/4 v9, 0x0

    goto :goto_0

    .line 95
    :cond_4
    const-string v14, "realm"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 96
    iput-object v11, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->realm:Ljava/lang/String;

    goto :goto_2

    .line 97
    :cond_5
    const-string v14, "nonce"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 98
    iput-object v11, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    goto :goto_2

    .line 99
    :cond_6
    const-string v14, "nc"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 100
    iput-object v11, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    goto :goto_2

    .line 101
    :cond_7
    const-string v14, "cnonce"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 102
    iput-object v11, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->cnonce:Ljava/lang/String;

    goto :goto_2

    .line 103
    :cond_8
    const-string v14, "qop"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 104
    iput-object v11, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->qop:Ljava/lang/String;

    goto :goto_2

    .line 105
    :cond_9
    const-string v14, "uri"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 106
    iput-object v11, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->uri:Ljava/lang/String;

    goto :goto_2

    .line 107
    :cond_a
    const-string v14, "response"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 108
    iput-object v11, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    goto :goto_2

    .line 114
    .end local v4    # "c":C
    .end local v11    # "tok":Ljava/lang/String;
    :cond_b
    iget-object v14, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1}, Lorg/mortbay/jetty/security/DigestAuthenticator;->checkNonce(Ljava/lang/String;Lorg/mortbay/jetty/Request;)I

    move-result v8

    .line 115
    .local v8, "n":I
    if-lez v8, :cond_f

    .line 116
    iget-object v14, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v14, v6, v1}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v13

    .line 120
    :cond_c
    :goto_3
    if-nez v13, :cond_10

    .line 121
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "AUTH FAILURE: user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    iget-object v15, v6, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    invoke-static {v15}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 130
    .end local v6    # "digest":Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;
    .end local v7    # "last":Ljava/lang/String;
    .end local v8    # "n":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "tokenizer":Lorg/mortbay/util/QuotedStringTokenizer;
    :cond_d
    :goto_4
    if-nez v13, :cond_e

    if-eqz p4, :cond_e

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v10}, Lorg/mortbay/jetty/security/DigestAuthenticator;->sendChallenge(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Z)V

    .line 133
    :cond_e
    return-object v13

    .line 117
    .restart local v6    # "digest":Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;
    .restart local v7    # "last":Ljava/lang/String;
    .restart local v8    # "n":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v12    # "tokenizer":Lorg/mortbay/util/QuotedStringTokenizer;
    :cond_f
    if-nez v8, :cond_c

    .line 118
    const/4 v10, 0x1

    goto :goto_3

    .line 124
    :cond_10
    const-string v14, "DIGEST"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    goto :goto_4

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public checkNonce(Ljava/lang/String;Lorg/mortbay/jetty/Request;)I
    .locals 20
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 209
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v14}, Lorg/mortbay/jetty/security/B64Code;->decode([C)[B

    move-result-object v8

    .line 210
    .local v8, "n":[B
    array-length v14, v8

    const/16 v15, 0x18

    if-eq v14, v15, :cond_0

    .line 211
    const/4 v14, -0x1

    .line 253
    .end local v8    # "n":[B
    :goto_0
    return v14

    .line 213
    .restart local v8    # "n":[B
    :cond_0
    const-wide/16 v12, 0x0

    .line 214
    .local v12, "ts":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    .line 215
    .local v10, "sk":J
    const/16 v14, 0x10

    new-array v9, v14, [B

    .line 216
    .local v9, "n2":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-static {v8, v14, v9, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v14, 0x8

    if-ge v6, v14, :cond_1

    .line 219
    add-int/lit8 v14, v6, 0x8

    const-wide/16 v16, 0xff

    and-long v16, v16, v10

    move-wide/from16 v0, v16

    long-to-int v15, v0

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 220
    const/16 v14, 0x8

    shr-long/2addr v10, v14

    .line 221
    const/16 v14, 0x8

    shl-long v14, v12, v14

    const-wide/16 v16, 0xff

    rsub-int/lit8 v18, v6, 0x7

    aget-byte v18, v8, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    add-long v12, v14, v16

    .line 217
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v14

    sub-long v2, v14, v12

    .line 225
    .local v2, "age":J
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :cond_2
    const/4 v5, 0x0

    .line 230
    .local v5, "hash":[B
    :try_start_1
    const-string v14, "MD5"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 231
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 232
    const/4 v14, 0x0

    const/16 v15, 0x10

    invoke-virtual {v7, v9, v14, v15}, Ljava/security/MessageDigest;->update([BII)V

    .line 233
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 240
    .end local v7    # "md":Ljava/security/MessageDigest;
    :goto_2
    const/4 v6, 0x0

    :goto_3
    const/16 v14, 0x10

    if-ge v6, v14, :cond_4

    .line 241
    add-int/lit8 v14, v6, 0x8

    :try_start_2
    aget-byte v14, v8, v14

    aget-byte v15, v5, v6

    if-eq v14, v15, :cond_3

    .line 242
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v4

    .line 237
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 249
    .end local v2    # "age":J
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "hash":[B
    .end local v6    # "i":I
    .end local v8    # "n":[B
    .end local v9    # "n2":[B
    .end local v10    # "sk":J
    .end local v12    # "ts":J
    :catch_1
    move-exception v4

    .line 251
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 253
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 240
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "age":J
    .restart local v5    # "hash":[B
    .restart local v6    # "i":I
    .restart local v8    # "n":[B
    .restart local v9    # "n2":[B
    .restart local v10    # "sk":J
    .restart local v12    # "ts":J
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 244
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-ltz v14, :cond_5

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    cmp-long v14, v2, v14

    if-lez v14, :cond_6

    .line 245
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 247
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "DIGEST"

    return-object v0
.end method

.method public getMaxNonceAge()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    return-wide v0
.end method

.method public getNonceSecret()J
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    return-wide v0
.end method

.method public getUseStale()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    return v0
.end method

.method public newNonce(Lorg/mortbay/jetty/Request;)Ljava/lang/String;
    .locals 12
    .param p1, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 164
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v8

    .line 165
    .local v8, "ts":J
    iget-wide v6, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    .line 167
    .local v6, "sk":J
    const/16 v5, 0x18

    new-array v4, v5, [B

    .line 168
    .local v4, "nounce":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v2, v5, :cond_0

    .line 170
    const-wide/16 v10, 0xff

    and-long/2addr v10, v8

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 171
    const/16 v5, 0x8

    shr-long/2addr v8, v5

    .line 172
    add-int/lit8 v5, v2, 0x8

    const-wide/16 v10, 0xff

    and-long/2addr v10, v6

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v5

    .line 173
    const/16 v5, 0x8

    shr-long/2addr v6, v5

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 179
    .local v1, "hash":[B
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 180
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 181
    const/4 v5, 0x0

    const/16 v10, 0x10

    invoke-virtual {v3, v4, v5, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 182
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_1
    const/4 v2, 0x0

    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 191
    add-int/lit8 v5, v2, 0x8

    aget-byte v10, v1, v2

    aput-byte v10, v4, v5

    .line 192
    const/16 v5, 0x17

    if-ne v2, v5, :cond_2

    .line 196
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Lorg/mortbay/jetty/security/B64Code;->encode([B)[C

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public sendChallenge(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Z)V
    .locals 5
    .param p1, "realm"    # Lorg/mortbay/jetty/security/UserRealm;
    .param p2, "request"    # Lorg/mortbay/jetty/Request;
    .param p3, "response"    # Lorg/mortbay/jetty/Response;
    .param p4, "stale"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "domain":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 151
    const-string v0, "/"

    .line 152
    :cond_0
    const-string v2, "WWW-Authenticate"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Digest realm=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/mortbay/jetty/security/UserRealm;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\", domain=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\", nonce=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/DigestAuthenticator;->newNonce(Lorg/mortbay/jetty/Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\", algorithm=MD5, qop=\"auth\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " stale="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/16 v1, 0x191

    invoke-virtual {p3, v1}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 159
    return-void

    .line 152
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public setMaxNonceAge(J)V
    .locals 1
    .param p1, "maxNonceAge"    # J

    .prologue
    .line 361
    iput-wide p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    .line 362
    return-void
.end method

.method public setNonceSecret(J)V
    .locals 1
    .param p1, "nonceSecret"    # J

    .prologue
    .line 375
    iput-wide p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    .line 376
    return-void
.end method

.method public setUseStale(Z)V
    .locals 0
    .param p1, "us"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    .line 381
    return-void
.end method
