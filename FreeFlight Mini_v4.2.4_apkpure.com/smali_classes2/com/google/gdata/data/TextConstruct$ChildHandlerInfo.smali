.class public Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
.super Ljava/lang/Object;
.source "TextConstruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/TextConstruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildHandlerInfo"
.end annotation


# instance fields
.field public handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

.field public textConstruct:Lcom/google/gdata/data/TextConstruct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
