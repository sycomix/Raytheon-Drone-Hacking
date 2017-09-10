.class final Lorg/mortbay/jetty/security/SecurityHandler$2;
.super Ljava/lang/Object;
.source "SecurityHandler.java"

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    const-string v0, "Nobody"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler$2;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
