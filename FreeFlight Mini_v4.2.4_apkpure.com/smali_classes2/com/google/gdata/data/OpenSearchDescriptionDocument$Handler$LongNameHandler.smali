.class Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$LongNameHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "OpenSearchDescriptionDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongNameHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$LongNameHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;
    .param p2, "x1"    # Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$LongNameHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$LongNameHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    iget-object v1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$LongNameHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->longName:Ljava/lang/String;

    .line 438
    return-void
.end method
