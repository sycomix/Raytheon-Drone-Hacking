.class public Ljavax/servlet/http/HttpSessionEvent;
.super Ljava/util/EventObject;
.source "HttpSessionEvent.java"


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpSession;)V
    .locals 0
    .param p1, "source"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpSession;

    return-object v0
.end method
