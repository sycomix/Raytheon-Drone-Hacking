.class public Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
.super Ljava/lang/Object;
.source "IMAPSaslAuthenticator.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/SaslAuthenticator;


# instance fields
.field private debug:Z

.field private host:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private props:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/util/Properties;ZLjava/io/PrintStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "pr"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "debug"    # Z
    .param p5, "out"    # Ljava/io/PrintStream;
    .param p6, "host"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 57
    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 59
    iput-boolean p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    .line 60
    iput-object p5, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    .line 61
    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static access$000(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    return v0
.end method

.method static access$100(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    return-object v0
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 28
    .param p1, "mechs"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v27, Ljava/util/Vector;

    invoke-direct/range {v27 .. v27}, Ljava/util/Vector;-><init>()V

    .line 68
    .local v27, "v":Ljava/util/Vector;
    const/16 v25, 0x0

    .line 69
    .local v25, "tag":Ljava/lang/String;
    const/16 v20, 0x0

    .line 70
    .local v20, "r":Lcom/sun/mail/iap/Response;
    const/4 v13, 0x0

    .line 71
    .local v13, "done":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_1

    .line 72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: Mechanisms:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v15, v4, :cond_0

    .line 74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-object v6, p1, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 75
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 79
    .end local v15    # "i":I
    :cond_1
    move-object/from16 v21, p2

    .line 80
    .local v21, "r0":Ljava/lang/String;
    move-object/from16 v26, p4

    .line 81
    .local v26, "u0":Ljava/lang/String;
    move-object/from16 v18, p5

    .line 82
    .local v18, "p0":Ljava/lang/String;
    new-instance v9, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;-><init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v9, "cbh":Ljavax/security/auth/callback/CallbackHandler;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-static/range {v4 .. v9}, Ljavax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;
    :try_end_0
    .catch Ljavax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 130
    .local v23, "sc":Ljavax/security/sasl/SaslClient;
    if-nez v23, :cond_4

    .line 131
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: No SASL support"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    :cond_2
    const/4 v4, 0x0

    .line 239
    .end local v23    # "sc":Ljavax/security/sasl/SaslClient;
    :goto_1
    return v4

    .line 124
    :catch_0
    move-exception v24

    .line 125
    .local v24, "sex":Ljavax/security/sasl/SaslException;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "IMAP SASL DEBUG: Failed to create SASL client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 135
    .end local v24    # "sex":Ljavax/security/sasl/SaslException;
    .restart local v23    # "sc":Ljavax/security/sasl/SaslClient;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "IMAP SASL DEBUG: SASL client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface/range {v23 .. v23}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "AUTHENTICATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface/range {v23 .. v23}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v25

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getIMAPOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 163
    .local v17, "os":Ljava/io/OutputStream;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v12, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x2

    new-array v10, v4, [B

    fill-array-data v10, :array_0

    .line 166
    .local v10, "CRLF":[B
    :goto_2
    if-nez v13, :cond_10

    .line 168
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v20

    .line 169
    invoke-virtual/range {v20 .. v20}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 170
    invoke-virtual/range {v20 .. v20}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/mail/iap/ByteArray;->getNewBytes()[B

    move-result-object v11

    .line 171
    .local v11, "ba":[B
    array-length v4, v11

    if-lez v4, :cond_6

    .line 172
    invoke-static {v11}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v11

    .line 173
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_7

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "IMAP SASL DEBUG: challenge: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/4 v6, 0x0

    array-length v7, v11

    invoke-static {v11, v6, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    :cond_7
    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v11

    .line 178
    invoke-interface/range {v23 .. v23}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v13

    .line 179
    if-nez v11, :cond_b

    .line 180
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_8

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: no response"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    :cond_8
    const/4 v13, 0x1

    .line 183
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write([B)V

    .line 184
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 185
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 205
    .end local v11    # "ba":[B
    :catch_1
    move-exception v16

    .line 206
    .local v16, "ioex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_9

    .line 207
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v20

    .line 210
    const/4 v13, 0x1

    .line 213
    goto/16 :goto_2

    .line 142
    .end local v10    # "CRLF":[B
    .end local v12    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "ioex":Ljava/lang/Exception;
    .end local v17    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v14

    .line 143
    .local v14, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_a

    .line 144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "IMAP SASL DEBUG: AUTHENTICATE Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 187
    .end local v14    # "ex":Ljava/lang/Exception;
    .restart local v10    # "CRLF":[B
    .restart local v11    # "ba":[B
    .restart local v12    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_c

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "IMAP SASL DEBUG: response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/4 v6, 0x0

    array-length v7, v11

    invoke-static {v11, v6, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    :cond_c
    invoke-static {v11}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v11

    .line 191
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 193
    invoke-virtual {v12, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 194
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 195
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 196
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_2

    .line 198
    .end local v11    # "ba":[B
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {v20 .. v20}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 200
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 201
    :cond_e
    invoke-virtual/range {v20 .. v20}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 202
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 204
    :cond_f
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 215
    :cond_10
    invoke-interface/range {v23 .. v23}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 216
    const-string v4, "javax.security.sasl.qop"

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljavax/security/sasl/SaslClient;->getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 217
    .local v19, "qop":Ljava/lang/String;
    if-eqz v19, :cond_13

    const-string v4, "auth-int"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "auth-conf"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 220
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v4, :cond_12

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v5, "IMAP SASL DEBUG: Mechanism requires integrity or confidentiality"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 233
    .end local v19    # "qop":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [Lcom/sun/mail/iap/Response;

    move-object/from16 v22, v0

    .line 234
    .local v22, "responses":[Lcom/sun/mail/iap/Response;
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 239
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 164
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method
