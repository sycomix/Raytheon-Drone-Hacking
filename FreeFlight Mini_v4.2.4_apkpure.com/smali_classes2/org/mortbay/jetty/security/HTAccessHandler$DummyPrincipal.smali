.class Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;
.super Ljava/lang/Object;
.source "HTAccessHandler.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HTAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DummyPrincipal"
.end annotation


# instance fields
.field private _userName:Ljava/lang/String;

.field private final this$0:Lorg/mortbay/jetty/security/HTAccessHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/HTAccessHandler;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;->this$0:Lorg/mortbay/jetty/security/HTAccessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;->_userName:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;->_userName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HTAccessHandler$DummyPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
