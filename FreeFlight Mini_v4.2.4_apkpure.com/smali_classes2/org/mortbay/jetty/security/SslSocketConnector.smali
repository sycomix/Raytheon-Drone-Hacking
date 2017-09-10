.class public Lorg/mortbay/jetty/security/SslSocketConnector;
.super Lorg/mortbay/jetty/bio/SocketConnector;
.source "SslSocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;,
        Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;
    }
.end annotation


# static fields
.field static final CACHED_INFO_ATTR:Ljava/lang/String;

.field public static final DEFAULT_KEYSTORE:Ljava/lang/String;

.field public static final KEYPASSWORD_PROPERTY:Ljava/lang/String; = "jetty.ssl.keypassword"

.field public static final PASSWORD_PROPERTY:Ljava/lang/String; = "jetty.ssl.password"

.field static class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo:Ljava/lang/Class;


# instance fields
.field private _allowRenegotiate:Z

.field private _excludeCipherSuites:[Ljava/lang/String;

.field private _handshakeTimeout:I

.field private transient _keyPassword:Lorg/mortbay/jetty/security/Password;

.field private _keystore:Ljava/lang/String;

.field private _keystoreType:Ljava/lang/String;

.field private _needClientAuth:Z

.field private transient _password:Lorg/mortbay/jetty/security/Password;

.field private _protocol:Ljava/lang/String;

.field private _provider:Ljava/lang/String;

.field private _secureRandomAlgorithm:Ljava/lang/String;

.field private _sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

.field private _sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

.field private transient _trustPassword:Lorg/mortbay/jetty/security/Password;

.field private _truststore:Ljava/lang/String;

.field private _truststoreType:Ljava/lang/String;

.field private _wantClientAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.security.SslSocketConnector$CachedInfo"

    invoke-static {v0}, Lorg/mortbay/jetty/security/SslSocketConnector;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->CACHED_INFO_ATTR:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->DEFAULT_KEYSTORE:Ljava/lang/String;

    return-void

    .line 76
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lorg/mortbay/jetty/bio/SocketConnector;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    .line 136
    sget-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->DEFAULT_KEYSTORE:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    .line 137
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    .line 140
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    .line 144
    const-string v0, "TLS"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    .line 147
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SunX509"

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

    .line 148
    const-string v0, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SunX509"

    :goto_1
    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

    .line 151
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    .line 154
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    .line 155
    iput v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_handshakeTimeout:I

    .line 157
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_allowRenegotiate:Z

    .line 166
    return-void

    .line 147
    :cond_0
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    const-string v0, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static access$100(Lorg/mortbay/jetty/security/SslSocketConnector;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/jetty/security/SslSocketConnector;

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_allowRenegotiate:Z

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private static getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;
    .locals 11
    .param p0, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v10, 0x0

    .line 103
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v5

    .line 104
    .local v5, "javaxCerts":[Ljavax/security/cert/X509Certificate;
    if-eqz v5, :cond_0

    array-length v9, v5

    if-nez v9, :cond_2

    :cond_0
    move-object v4, v10

    .line 127
    .end local v5    # "javaxCerts":[Ljavax/security/cert/X509Certificate;
    :cond_1
    :goto_0
    return-object v4

    .line 107
    .restart local v5    # "javaxCerts":[Ljavax/security/cert/X509Certificate;
    :cond_2
    array-length v6, v5

    .line 108
    .local v6, "length":I
    new-array v4, v6, [Ljava/security/cert/X509Certificate;

    .line 110
    .local v4, "javaCerts":[Ljava/security/cert/X509Certificate;
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 111
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 113
    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 114
    .local v0, "bytes":[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    .local v8, "stream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    aput-object v9, v4, v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    .end local v0    # "bytes":[B
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v4    # "javaCerts":[Ljava/security/cert/X509Certificate;
    .end local v5    # "javaxCerts":[Ljavax/security/cert/X509Certificate;
    .end local v6    # "length":I
    .end local v8    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v7

    .local v7, "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    move-object v4, v10

    .line 122
    goto :goto_0

    .line 124
    .end local v7    # "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_1
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "EXCEPTION "

    invoke-static {v9, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v10

    .line 127
    goto :goto_0
.end method


# virtual methods
.method public accept(I)V
    .locals 6
    .param p1, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    iget-object v4, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 198
    .local v3, "socket":Ljava/net/Socket;
    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/security/SslSocketConnector;->configure(Ljava/net/Socket;)V

    .line 200
    new-instance v0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    invoke-direct {v0, p0, v3}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;-><init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/net/Socket;)V

    .line 201
    .local v0, "connection":Lorg/mortbay/jetty/bio/SocketConnector$Connection;
    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->dispatch()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "connection":Lorg/mortbay/jetty/bio/SocketConnector$Connection;
    .end local v3    # "socket":Ljava/net/Socket;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljavax/net/ssl/SSLException;
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 208
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 210
    :catch_1
    move-exception v2

    .line 212
    .local v2, "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 213
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected configure(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-super {p0, p1}, Lorg/mortbay/jetty/bio/SocketConnector;->configure(Ljava/net/Socket;)V

    .line 223
    return-void
.end method

.method protected createFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 229
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 231
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    iput-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    .line 232
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    iput-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    .line 235
    :cond_0
    const/4 v2, 0x0

    .line 236
    .local v2, "keyManagers":[Ljavax/net/ssl/KeyManager;
    const/4 v4, 0x0

    .line 237
    .local v4, "keystoreInputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 240
    .local v3, "keyStore":Ljava/security/KeyStore;
    :try_start_0
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 242
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    invoke-static {v10}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v10

    invoke-virtual {v10}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 245
    :cond_1
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 246
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_password:Lorg/mortbay/jetty/security/Password;

    if-nez v10, :cond_5

    move-object v10, v11

    :goto_0
    invoke-virtual {v3, v4, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    if-eqz v4, :cond_2

    .line 252
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 256
    :cond_2
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

    invoke-static {v10}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 257
    .local v1, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keyPassword:Lorg/mortbay/jetty/security/Password;

    if-nez v10, :cond_7

    move-object v10, v11

    :goto_1
    invoke-virtual {v1, v3, v10}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 258
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 260
    const/4 v7, 0x0

    .line 261
    .local v7, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/4 v9, 0x0

    .line 262
    .local v9, "truststoreInputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 266
    .local v8, "trustStore":Ljava/security/KeyStore;
    :try_start_1
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 268
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    invoke-static {v10}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v10

    invoke-virtual {v10}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 270
    :cond_3
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 271
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_trustPassword:Lorg/mortbay/jetty/security/Password;

    if-nez v10, :cond_8

    move-object v10, v11

    :goto_2
    invoke-virtual {v8, v9, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    if-eqz v9, :cond_4

    .line 277
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 281
    :cond_4
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

    invoke-static {v10}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 282
    .local v6, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v6, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 283
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    .line 286
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_secureRandomAlgorithm:Ljava/lang/String;

    if-nez v10, :cond_a

    move-object v5, v11

    .line 288
    .local v5, "secureRandom":Ljava/security/SecureRandom;
    :goto_3
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_provider:Ljava/lang/String;

    if-nez v10, :cond_b

    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    invoke-static {v10}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 290
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :goto_4
    invoke-virtual {v0, v2, v7, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 292
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v10

    return-object v10

    .line 246
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    .end local v1    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "secureRandom":Ljava/security/SecureRandom;
    .end local v6    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v7    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .end local v8    # "trustStore":Ljava/security/KeyStore;
    .end local v9    # "truststoreInputStream":Ljava/io/InputStream;
    :cond_5
    :try_start_2
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_password:Lorg/mortbay/jetty/security/Password;

    invoke-virtual {v10}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v10

    if-eqz v4, :cond_6

    .line 252
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 250
    :cond_6
    throw v10

    .line 257
    .restart local v1    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_7
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keyPassword:Lorg/mortbay/jetty/security/Password;

    invoke-virtual {v10}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    goto :goto_1

    .line 271
    .restart local v7    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .restart local v8    # "trustStore":Ljava/security/KeyStore;
    .restart local v9    # "truststoreInputStream":Ljava/io/InputStream;
    :cond_8
    :try_start_3
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_trustPassword:Lorg/mortbay/jetty/security/Password;

    invoke-virtual {v10}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    goto :goto_2

    .line 275
    :catchall_1
    move-exception v10

    if-eqz v9, :cond_9

    .line 277
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 275
    :cond_9
    throw v10

    .line 286
    .restart local v6    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :cond_a
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_secureRandomAlgorithm:Ljava/lang/String;

    invoke-static {v10}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v5

    goto :goto_3

    .line 288
    .restart local v5    # "secureRandom":Ljava/security/SecureRandom;
    :cond_b
    iget-object v10, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    iget-object v11, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_provider:Ljava/lang/String;

    invoke-static {v10, v11}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_4
.end method

.method public customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 10
    .param p1, "endpoint"    # Lorg/mortbay/io/EndPoint;
    .param p2, "request"    # Lorg/mortbay/jetty/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/bio/SocketConnector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    .line 318
    const-string v8, "https"

    invoke-virtual {p2, v8}, Lorg/mortbay/jetty/Request;->setScheme(Ljava/lang/String;)V

    move-object v5, p1

    .line 320
    check-cast v5, Lorg/mortbay/io/bio/SocketEndPoint;

    .line 321
    .local v5, "socket_end_point":Lorg/mortbay/io/bio/SocketEndPoint;
    invoke-virtual {v5}, Lorg/mortbay/io/bio/SocketEndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocket;

    .line 325
    .local v7, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    .line 326
    .local v6, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "cipherSuite":Ljava/lang/String;
    sget-object v8, Lorg/mortbay/jetty/security/SslSocketConnector;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljavax/net/ssl/SSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;

    .line 331
    .local v0, "cachedInfo":Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;->getKeySize()Ljava/lang/Integer;

    move-result-object v4

    .line 334
    .local v4, "keySize":Ljava/lang/Integer;
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;->getCerts()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 344
    .local v1, "certs":[Ljava/security/cert/X509Certificate;
    :goto_0
    if-eqz v1, :cond_2

    .line 345
    const-string v8, "javax.servlet.request.X509Certificate"

    invoke-virtual {p2, v8, v1}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    :cond_0
    const-string v8, "javax.servlet.request.cipher_suite"

    invoke-virtual {p2, v8, v2}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-string v8, "javax.servlet.request.key_size"

    invoke-virtual {p2, v8, v4}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    .end local v0    # "cachedInfo":Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;
    .end local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v2    # "cipherSuite":Ljava/lang/String;
    .end local v4    # "keySize":Ljava/lang/Integer;
    .end local v6    # "sslSession":Ljavax/net/ssl/SSLSession;
    :goto_1
    return-void

    .line 338
    .restart local v0    # "cachedInfo":Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;
    .restart local v2    # "cipherSuite":Ljava/lang/String;
    .restart local v6    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v4, Ljava/lang/Integer;

    invoke-static {v2}, Lorg/mortbay/jetty/security/ServletSSL;->deduceKeyLength(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 339
    .restart local v4    # "keySize":Ljava/lang/Integer;
    invoke-static {v6}, Lorg/mortbay/jetty/security/SslSocketConnector;->getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 340
    .restart local v1    # "certs":[Ljava/security/cert/X509Certificate;
    new-instance v0, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;

    .end local v0    # "cachedInfo":Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;
    invoke-direct {v0, p0, v4, v1}, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;-><init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;)V

    .line 341
    .restart local v0    # "cachedInfo":Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;
    sget-object v8, Lorg/mortbay/jetty/security/SslSocketConnector;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {v6, v8, v0}, Ljavax/net/ssl/SSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v0    # "cachedInfo":Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;
    .end local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v2    # "cipherSuite":Ljava/lang/String;
    .end local v4    # "keySize":Ljava/lang/Integer;
    .end local v6    # "sslSession":Ljavax/net/ssl/SSLSession;
    :catch_0
    move-exception v3

    .line 354
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "EXCEPTION "

    invoke-static {v8, v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 346
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cachedInfo":Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;
    .restart local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local v2    # "cipherSuite":Ljava/lang/String;
    .restart local v4    # "keySize":Ljava/lang/Integer;
    .restart local v6    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_2
    :try_start_1
    iget-boolean v8, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    if-eqz v8, :cond_0

    .line 347
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "no client auth"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getExcludeCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getHandshakeTimeout()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_handshakeTimeout:I

    return v0
.end method

.method public getKeystore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_provider:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_secureRandomAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getSslTrustManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    return v0
.end method

.method public isAllowRenegotiate()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_allowRenegotiate:Z

    return v0
.end method

.method public isConfidential(Lorg/mortbay/jetty/Request;)Z
    .locals 2
    .param p1, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 438
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector;->getConfidentialPort()I

    move-result v0

    .line 439
    .local v0, "confidentialPort":I
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntegral(Lorg/mortbay/jetty/Request;)Z
    .locals 2
    .param p1, "request"    # Lorg/mortbay/jetty/Request;

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector;->getIntegralPort()I

    move-result v0

    .line 453
    .local v0, "integralPort":I
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 12
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    const/4 v7, 0x0

    .line 472
    .local v7, "factory":Ljavax/net/ssl/SSLServerSocketFactory;
    const/4 v8, 0x0

    .line 476
    .local v8, "socket":Ljavax/net/ssl/SSLServerSocket;
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector;->createFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v7

    .line 478
    if-nez p1, :cond_3

    invoke-virtual {v7, p2, p3}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(II)Ljava/net/ServerSocket;

    move-result-object v9

    :goto_0
    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    move-object v8, v0

    .line 482
    iget-boolean v9, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    if-eqz v9, :cond_0

    .line 483
    iget-boolean v9, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    invoke-virtual {v8, v9}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 484
    :cond_0
    iget-boolean v9, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    if-eqz v9, :cond_1

    .line 485
    iget-boolean v9, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    invoke-virtual {v8, v9}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 487
    :cond_1
    iget-object v9, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_5

    .line 489
    iget-object v9, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 490
    .local v6, "excludedCSList":Ljava/util/List;
    invoke-virtual {v8}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, "enabledCipherSuites":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 492
    .local v3, "enabledCSList":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 494
    .local v5, "exIter":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 496
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 497
    .local v1, "cipherName":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 499
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 508
    .end local v1    # "cipherName":Ljava/lang/String;
    .end local v3    # "enabledCSList":Ljava/util/List;
    .end local v4    # "enabledCipherSuites":[Ljava/lang/String;
    .end local v5    # "exIter":Ljava/util/Iterator;
    .end local v6    # "excludedCSList":Ljava/util/List;
    :catch_0
    move-exception v2

    .line 510
    .local v2, "e":Ljava/io/IOException;
    throw v2

    .line 478
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v7, p2, p3, v9}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v9

    goto :goto_0

    .line 502
    .restart local v3    # "enabledCSList":Ljava/util/List;
    .restart local v4    # "enabledCipherSuites":[Ljava/lang/String;
    .restart local v5    # "exIter":Ljava/util/Iterator;
    .restart local v6    # "excludedCSList":Ljava/util/List;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 504
    invoke-virtual {v8, v4}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 518
    .end local v3    # "enabledCSList":Ljava/util/List;
    .end local v4    # "enabledCipherSuites":[Ljava/lang/String;
    .end local v5    # "exIter":Ljava/util/Iterator;
    .end local v6    # "excludedCSList":Ljava/util/List;
    :cond_5
    return-object v8

    .line 512
    :catch_1
    move-exception v2

    .line 514
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 515
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 516
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "!JsseListener: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public setAllowRenegotiate(Z)V
    .locals 0
    .param p1, "allowRenegotiate"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_allowRenegotiate:Z

    .line 189
    return-void
.end method

.method public setExcludeCipherSuites([Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 526
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    .line 527
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0
    .param p1, "msec"    # I

    .prologue
    .line 634
    iput p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_handshakeTimeout:I

    .line 635
    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 532
    const-string v0, "jetty.ssl.keypassword"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keyPassword:Lorg/mortbay/jetty/security/Password;

    .line 533
    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 0
    .param p1, "keystore"    # Ljava/lang/String;

    .prologue
    .line 541
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 0
    .param p1, "keystoreType"    # Ljava/lang/String;

    .prologue
    .line 547
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0
    .param p1, "needClientAuth"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    .line 559
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 564
    const-string v0, "jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_password:Lorg/mortbay/jetty/security/Password;

    .line 565
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "_provider"    # Ljava/lang/String;

    .prologue
    .line 581
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_provider:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 587
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_secureRandomAlgorithm:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 593
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

    .line 594
    return-void
.end method

.method public setSslTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 599
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setTrustPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 570
    const-string v0, "jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_trustPassword:Lorg/mortbay/jetty/security/Password;

    .line 571
    return-void
.end method

.method public setTruststore(Ljava/lang/String;)V
    .locals 0
    .param p1, "truststore"    # Ljava/lang/String;

    .prologue
    .line 605
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    .line 606
    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 0
    .param p1, "truststoreType"    # Ljava/lang/String;

    .prologue
    .line 611
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    .line 612
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0
    .param p1, "wantClientAuth"    # Z

    .prologue
    .line 624
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    .line 625
    return-void
.end method
