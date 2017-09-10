.class public Lorg/mortbay/jetty/security/Credential$MD5;
.super Lorg/mortbay/jetty/security/Credential;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5"
.end annotation


# static fields
.field public static final __TYPE:Ljava/lang/String; = "MD5:"

.field private static __md:Ljava/security/MessageDigest;

.field public static final __md5Lock:Ljava/lang/Object;


# instance fields
.field private _digest:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "digest"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/mortbay/jetty/security/Credential;-><init>()V

    .line 114
    const-string v0, "MD5:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MD5:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 117
    :cond_0
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/mortbay/util/TypeUtil;->parseBytes(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    .line 118
    return-void
.end method

.method public static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 186
    :try_start_0
    sget-object v4, Lorg/mortbay/jetty/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :try_start_1
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 190
    :try_start_2
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :cond_0
    :try_start_3
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 195
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    sget-object v5, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 196
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 197
    .local v0, "digest":[B
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :try_start_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "MD5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v0, v4}, Lorg/mortbay/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    .line 204
    .end local v0    # "digest":[B
    :goto_0
    return-object v2

    .line 191
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    monitor-exit v4

    goto :goto_0

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 201
    :catch_1
    move-exception v1

    .line 203
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "digest":[B
    :try_start_0
    instance-of v7, p1, Lorg/mortbay/jetty/security/Password;

    if-nez v7, :cond_0

    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 136
    :cond_0
    sget-object v7, Lorg/mortbay/jetty/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    sget-object v8, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    if-nez v8, :cond_1

    .line 139
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    .line 140
    :cond_1
    sget-object v8, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 141
    sget-object v8, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    sget-object v8, Lorg/mortbay/jetty/security/Credential$MD5;->__md:Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 143
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-eqz v1, :cond_2

    :try_start_2
    array-length v7, v1

    iget-object v8, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    array-length v8, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v7, v8, :cond_3

    .line 176
    .end local p1    # "credentials":Ljava/lang/Object;
    :cond_2
    :goto_0
    return v5

    .line 143
    .restart local p1    # "credentials":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 173
    .end local p1    # "credentials":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_5
    array-length v7, v1

    if-ge v3, v7, :cond_4

    .line 147
    aget-byte v7, v1, v3

    iget-object v8, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    aget-byte v8, v8, v3

    if-ne v7, v8, :cond_2

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    .line 149
    goto :goto_0

    .line 151
    .end local v3    # "i":I
    :cond_5
    instance-of v7, p1, Lorg/mortbay/jetty/security/Credential$MD5;

    if-eqz v7, :cond_7

    .line 153
    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/security/Credential$MD5;

    move-object v4, v0

    .line 154
    .local v4, "md5":Lorg/mortbay/jetty/security/Credential$MD5;
    iget-object v7, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    array-length v7, v7

    iget-object v8, v4, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    array-length v8, v8

    if-ne v7, v8, :cond_2

    .line 156
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v7, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    array-length v7, v7

    if-ge v3, v7, :cond_6

    .line 157
    iget-object v7, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    aget-byte v7, v7, v3

    iget-object v8, v4, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    aget-byte v8, v8, v3

    if-ne v7, v8, :cond_2

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v5, v6

    .line 159
    goto :goto_0

    .line 161
    .end local v3    # "i":I
    .end local v4    # "md5":Lorg/mortbay/jetty/security/Credential$MD5;
    :cond_7
    instance-of v6, p1, Lorg/mortbay/jetty/security/Credential;

    if-eqz v6, :cond_8

    .line 165
    check-cast p1, Lorg/mortbay/jetty/security/Credential;

    .end local p1    # "credentials":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 169
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_8
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Can\'t check "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " against MD5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/mortbay/jetty/security/Credential$MD5;->_digest:[B

    return-object v0
.end method
