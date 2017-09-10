.class Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;
.super Ljava/lang/Object;
.source "SslSocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/SslSocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedInfo"
.end annotation


# instance fields
.field private _certs:[Ljava/security/cert/X509Certificate;

.field private _keySize:Ljava/lang/Integer;

.field private final this$0:Lorg/mortbay/jetty/security/SslSocketConnector;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p2, "keySize"    # Ljava/lang/Integer;
    .param p3, "certs"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 652
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;->this$0:Lorg/mortbay/jetty/security/SslSocketConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p2, p0, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;->_keySize:Ljava/lang/Integer;

    .line 654
    iput-object p3, p0, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;->_certs:[Ljava/security/cert/X509Certificate;

    .line 655
    return-void
.end method


# virtual methods
.method getCerts()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;->_certs:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method getKeySize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;->_keySize:Ljava/lang/Integer;

    return-object v0
.end method
