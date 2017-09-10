.class public Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;
.super Ljava/lang/Object;
.source "SecurityHandler.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/SecurityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotChecked"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/security/SecurityHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/SecurityHandler;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->this$0:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->this$0:Lorg/mortbay/jetty/security/SecurityHandler;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    const-string v0, "NOT CHECKED"

    return-object v0
.end method
