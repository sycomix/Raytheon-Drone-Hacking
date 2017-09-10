.class Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "OpenSearchDescriptionDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdultContentHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;
    .param p2, "x1"    # Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;->value:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;->value:Ljava/lang/String;

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;->value:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;->value:Ljava/lang/String;

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;->value:Ljava/lang/String;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler$AdultContentHandler;->this$1:Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;->this$0:Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->adultContent:Z

    .line 529
    :cond_0
    return-void
.end method
