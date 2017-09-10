.class public Lorg/mortbay/jetty/security/Password;
.super Lorg/mortbay/jetty/security/Credential;
.source "Password.java"


# static fields
.field public static final __OBFUSCATE:Ljava/lang/String; = "OBF:"


# instance fields
.field private _pw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/mortbay/jetty/security/Credential;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    .line 61
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    const-string v1, "OBF:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/jetty/security/Password;->deobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public static deobfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v8, "OBF:"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 156
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    new-array v0, v8, [B

    .line 159
    .local v0, "b":[B
    const/4 v5, 0x0

    .line 160
    .local v5, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 162
    add-int/lit8 v8, v1, 0x4

    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "x":Ljava/lang/String;
    const/16 v8, 0x24

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 164
    .local v2, "i0":I
    div-int/lit16 v3, v2, 0x100

    .line 165
    .local v3, "i1":I
    rem-int/lit16 v4, v2, 0x100

    .line 166
    .local v4, "i2":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "l":I
    .local v6, "l":I
    add-int v8, v3, v4

    add-int/lit16 v8, v8, -0xfe

    div-int/lit8 v8, v8, 0x2

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    .line 160
    add-int/lit8 v1, v1, 0x4

    move v5, v6

    .end local v6    # "l":I
    .restart local v5    # "l":I
    goto :goto_0

    .line 169
    .end local v2    # "i0":I
    .end local v3    # "i1":I
    .end local v4    # "i2":I
    .end local v7    # "x":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v5}, Ljava/lang/String;-><init>([BII)V

    return-object v8
.end method

.method public static getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;
    .locals 7
    .param p0, "realm"    # Ljava/lang/String;
    .param p1, "dft"    # Ljava/lang/String;
    .param p2, "promptDft"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "passwd":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 191
    :cond_0
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, " [dft]"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 194
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->flush()V

    .line 195
    const/16 v4, 0x200

    new-array v0, v4, [B

    .line 196
    .local v0, "buf":[B
    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 197
    .local v2, "len":I
    if-lez v2, :cond_1

    .line 198
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 204
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 205
    :cond_2
    move-object v3, p2

    .line 207
    :cond_3
    new-instance v4, Lorg/mortbay/jetty/security/Password;

    invoke-direct {v4, v3}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 191
    :cond_4
    :try_start_1
    const-string v4, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "EXCEPTION "

    invoke-static {v4, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "arg"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 217
    array-length v4, p0

    if-eq v4, v2, :cond_0

    array-length v4, p0

    if-eq v4, v6, :cond_0

    .line 219
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Usage - java org.mortbay.jetty.security.Password [<user>] <password>"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "If the password is ?, the user will be prompted for the password"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 223
    :cond_0
    array-length v4, p0

    if-ne v4, v2, :cond_1

    move v2, v3

    :cond_1
    aget-object v0, p0, v2

    .line 224
    .local v0, "p":Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lorg/mortbay/jetty/security/Password;

    invoke-direct {v1, v0}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "pw":Lorg/mortbay/jetty/security/Password;
    :goto_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/jetty/security/Password;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/mortbay/jetty/security/Credential$MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    array-length v2, p0

    if-ne v2, v6, :cond_2

    .line 229
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aget-object v3, p0, v3

    invoke-virtual {v1}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/mortbay/jetty/security/Credential$Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    :cond_2
    return-void

    .line 224
    .end local v1    # "pw":Lorg/mortbay/jetty/security/Password;
    :cond_3
    new-instance v1, Lorg/mortbay/jetty/security/Password;

    invoke-direct {v1, v0}, Lorg/mortbay/jetty/security/Password;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v3, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 128
    .local v0, "b":[B
    monitor-enter v3

    .line 130
    :try_start_0
    const-string v9, "OBF:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v0

    if-ge v4, v9, :cond_0

    .line 133
    aget-byte v1, v0, v4

    .line 134
    .local v1, "b1":B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v4, 0x1

    sub-int/2addr v9, v10

    aget-byte v2, v0, v9

    .line 135
    .local v2, "b2":B
    add-int/lit8 v9, v1, 0x7f

    add-int v6, v9, v2

    .line 136
    .local v6, "i1":I
    add-int/lit8 v9, v1, 0x7f

    sub-int v7, v9, v2

    .line 137
    .local v7, "i2":I
    mul-int/lit16 v9, v6, 0x100

    add-int v5, v9, v7

    .line 138
    .local v5, "i0":I
    const/16 v9, 0x24

    invoke-static {v5, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "x":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 145
    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :pswitch_0
    const/16 v9, 0x30

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :pswitch_1
    const/16 v9, 0x30

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    :pswitch_2
    const/16 v9, 0x30

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 149
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v4    # "i":I
    .end local v5    # "i0":I
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    .end local v8    # "x":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 148
    .restart local v4    # "i":I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 81
    if-ne p0, p1, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 93
    .end local p1    # "credentials":Ljava/lang/Object;
    :goto_0
    return v0

    .line 84
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/mortbay/jetty/security/Password;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_2
    instance-of v0, p1, Lorg/mortbay/jetty/security/Credential;

    if-eqz v0, :cond_3

    .line 91
    check-cast p1, Lorg/mortbay/jetty/security/Credential;

    .end local p1    # "credentials":Ljava/lang/Object;
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 93
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    if-eqz p1, :cond_0

    .line 105
    instance-of v3, p1, Lorg/mortbay/jetty/security/Password;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 107
    check-cast v0, Lorg/mortbay/jetty/security/Password;

    .line 108
    .local v0, "p":Lorg/mortbay/jetty/security/Password;
    iget-object v3, v0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    iget-object v4, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    iget-object v4, v0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 111
    .end local v0    # "p":Lorg/mortbay/jetty/security/Password;
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 112
    iget-object v1, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toStarString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    const-string v0, "*****************************************************"

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/mortbay/jetty/security/Password;->_pw:Ljava/lang/String;

    return-object v0
.end method
