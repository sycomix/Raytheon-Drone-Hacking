.class Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DescriptionHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "OpenSearchDescriptionDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescriptionHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DescriptionHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;
    .param p2, "x1"    # Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DescriptionHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DescriptionHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$DescriptionHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->description:Ljava/lang/String;

    .line 446
    return-void
.end method
