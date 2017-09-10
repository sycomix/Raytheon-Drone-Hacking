.class public Ljavax/servlet/ServletContextEvent;
.super Ljava/util/EventObject;
.source "ServletContextEvent.java"


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletContext;)V
    .locals 0
    .param p1, "source"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletContext;

    return-object v0
.end method
