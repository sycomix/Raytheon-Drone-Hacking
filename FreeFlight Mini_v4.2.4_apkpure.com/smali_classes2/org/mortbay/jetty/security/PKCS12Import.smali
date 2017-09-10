.class public Lorg/mortbay/jetty/security/PKCS12Import;
.super Ljava/lang/Object;
.source "PKCS12Import.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dumpChain([Ljava/security/cert/Certificate;)V
    .locals 6
    .param p0, "chain"    # [Ljava/security/cert/Certificate;

    .prologue
    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 125
    aget-object v0, p0, v1

    .line 126
    .local v0, "cert":Ljava/security/cert/Certificate;
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_0

    .line 127
    aget-object v2, p0, v1

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 128
    .local v2, "x509":Ljava/security/cert/X509Certificate;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "subject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "issuer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    .end local v2    # "x509":Ljava/security/cert/X509Certificate;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    move-object/from16 v0, p0

    array-length v14, v0

    const/4 v15, 0x1

    if-ge v14, v15, :cond_0

    .line 62
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "usage: java PKCS12Import {pkcs12file} [newjksfile]"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/System;->exit(I)V

    .line 67
    :cond_0
    new-instance v3, Ljava/io/File;

    const/4 v14, 0x0

    aget-object v14, p0, v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "fileIn":Ljava/io/File;
    move-object/from16 v0, p0

    array-length v14, v0

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 70
    new-instance v4, Ljava/io/File;

    const/4 v14, 0x1

    aget-object v14, p0, v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, "fileOut":Ljava/io/File;
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v14

    if-nez v14, :cond_1

    .line 76
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Unable to access input keystore: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/System;->exit(I)V

    .line 81
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v14

    if-nez v14, :cond_2

    .line 82
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Output file is not writable: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/System;->exit(I)V

    .line 87
    :cond_2
    const-string v14, "pkcs12"

    invoke-static {v14}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 88
    .local v8, "kspkcs12":Ljava/security/KeyStore;
    const-string v14, "jks"

    invoke-static {v14}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 90
    .local v7, "ksjks":Ljava/security/KeyStore;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "Enter input keystore passphrase: "

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lorg/mortbay/jetty/security/PKCS12Import;->readPassphrase()[C

    move-result-object v5

    .line 92
    .local v5, "inphrase":[C
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "Enter output keystore passphrase: "

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lorg/mortbay/jetty/security/PKCS12Import;->readPassphrase()[C

    move-result-object v12

    .line 95
    .local v12, "outphrase":[C
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v14, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 97
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_1
    invoke-virtual {v7, v14, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 101
    invoke-virtual {v8}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 102
    .local v2, "eAliases":Ljava/util/Enumeration;
    const/4 v9, 0x0

    .line 103
    .local v9, "n":I
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 104
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 105
    .local v13, "strAlias":Ljava/lang/String;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Alias "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "n":I
    .local v10, "n":I
    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v8, v13}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 108
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Adding key for alias "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v8, v13, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v6

    .line 111
    .local v6, "key":Ljava/security/Key;
    invoke-virtual {v8, v13}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 113
    .local v1, "chain":[Ljava/security/cert/Certificate;
    invoke-virtual {v7, v13, v6, v12, v1}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .end local v1    # "chain":[Ljava/security/cert/Certificate;
    .end local v6    # "key":Ljava/security/Key;
    :cond_3
    move v9, v10

    .line 115
    .end local v10    # "n":I
    .restart local v9    # "n":I
    goto :goto_2

    .line 72
    .end local v2    # "eAliases":Ljava/util/Enumeration;
    .end local v4    # "fileOut":Ljava/io/File;
    .end local v5    # "inphrase":[C
    .end local v7    # "ksjks":Ljava/security/KeyStore;
    .end local v8    # "kspkcs12":Ljava/security/KeyStore;
    .end local v9    # "n":I
    .end local v12    # "outphrase":[C
    .end local v13    # "strAlias":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/io/File;

    const-string v14, "newstore.jks"

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "fileOut":Ljava/io/File;
    goto/16 :goto_0

    .line 97
    .restart local v5    # "inphrase":[C
    .restart local v7    # "ksjks":Ljava/security/KeyStore;
    .restart local v8    # "kspkcs12":Ljava/security/KeyStore;
    .restart local v12    # "outphrase":[C
    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    .line 117
    .restart local v2    # "eAliases":Ljava/util/Enumeration;
    .restart local v9    # "n":I
    :cond_6
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 118
    .local v11, "out":Ljava/io/OutputStream;
    invoke-virtual {v7, v11, v12}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 119
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 120
    return-void
.end method

.method static readPassphrase()[C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 136
    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 138
    .local v4, "in":Ljava/io/InputStreamReader;
    const/16 v6, 0x100

    new-array v1, v6, [C

    .line 139
    .local v1, "cbuf":[C
    const/4 v2, 0x0

    .line 142
    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 143
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->read()I

    move-result v6

    int-to-char v0, v6

    .line 144
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 150
    :pswitch_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-char v0, v1, v2

    move v2, v3

    .line 152
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 154
    .end local v0    # "c":C
    :cond_0
    :pswitch_1
    new-array v5, v2, [C

    .line 155
    .local v5, "phrase":[C
    invoke-static {v1, v7, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    return-object v5

    .line 144
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
