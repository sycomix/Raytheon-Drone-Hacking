.class Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;
.super Lorg/mortbay/jetty/security/Credential;
.source "DigestAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/DigestAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Digest"
.end annotation


# instance fields
.field cnonce:Ljava/lang/String;

.field method:Ljava/lang/String;

.field nc:Ljava/lang/String;

.field nonce:Ljava/lang/String;

.field qop:Ljava/lang/String;

.field realm:Ljava/lang/String;

.field response:Ljava/lang/String;

.field uri:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "m"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-direct {p0}, Lorg/mortbay/jetty/security/Credential;-><init>()V

    .line 261
    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->method:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->realm:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->cnonce:Ljava/lang/String;

    .line 267
    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->qop:Ljava/lang/String;

    .line 268
    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->uri:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->method:Ljava/lang/String;

    .line 275
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 280
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 285
    .local v5, "password":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 287
    .local v4, "md":Ljava/security/MessageDigest;
    instance-of v6, p1, Lorg/mortbay/jetty/security/Credential$MD5;

    if-eqz v6, :cond_1

    .line 292
    check-cast p1, Lorg/mortbay/jetty/security/Credential$MD5;

    .end local p1    # "credentials":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/mortbay/jetty/security/Credential$MD5;->getDigest()[B

    move-result-object v2

    .line 305
    .local v2, "ha1":[B
    :goto_1
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 306
    iget-object v6, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->method:Ljava/lang/String;

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 307
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update(B)V

    .line 308
    iget-object v6, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->uri:Ljava/lang/String;

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 309
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 321
    .local v3, "ha2":[B
    const/16 v6, 0x10

    invoke-static {v2, v6}, Lorg/mortbay/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 322
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update(B)V

    .line 323
    iget-object v6, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 324
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update(B)V

    .line 325
    iget-object v6, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 326
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update(B)V

    .line 327
    iget-object v6, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->cnonce:Ljava/lang/String;

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 328
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update(B)V

    .line 329
    iget-object v6, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->qop:Ljava/lang/String;

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 330
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update(B)V

    .line 331
    const/16 v6, 0x10

    invoke-static {v3, v6}, Lorg/mortbay/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 332
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 335
    .local v0, "digest":[B
    const/16 v6, 0x10

    invoke-static {v0, v6}, Lorg/mortbay/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 340
    .end local v0    # "digest":[B
    .end local v2    # "ha1":[B
    .end local v3    # "ha2":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_2
    return v6

    .line 280
    .end local v5    # "password":Ljava/lang/String;
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 297
    .restart local v4    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "password":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 298
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update(B)V

    .line 299
    iget-object v6, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->realm:Ljava/lang/String;

    sget-object v7, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 300
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update(B)V

    .line 301
    sget-object v6, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 302
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "ha1":[B
    goto/16 :goto_1

    .line 337
    .end local v2    # "ha1":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local p1    # "credentials":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 340
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
