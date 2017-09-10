.class final Lcom/google/gdata/data/media/GDataContentHandler$1;
.super Ljava/lang/ThreadLocal;
.source "GDataContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/media/GDataContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/google/gdata/wireformats/input/InputProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/google/gdata/wireformats/input/InputProperties;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/google/gdata/data/media/GDataContentHandler;->access$000()Lcom/google/gdata/wireformats/input/InputProperties;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/gdata/data/media/GDataContentHandler$1;->initialValue()Lcom/google/gdata/wireformats/input/InputProperties;

    move-result-object v0

    return-object v0
.end method
