.class Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "OpenSearchDescriptionDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyndicationRightHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;
    .param p2, "x1"    # Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;->value:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;->value:Ljava/lang/String;

    const-string v1, "limited"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    goto :goto_0

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;->value:Ljava/lang/String;

    const-string v1, "private"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    goto :goto_0

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;->value:Ljava/lang/String;

    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$SyndicationRightHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    goto :goto_0
.end method
