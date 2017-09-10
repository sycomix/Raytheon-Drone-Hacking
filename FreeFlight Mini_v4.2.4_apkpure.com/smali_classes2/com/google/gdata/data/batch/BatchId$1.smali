.class Lcom/google/gdata/data/batch/BatchId$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "BatchId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/data/batch/BatchId;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/batch/BatchId;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/batch/BatchId;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchId$1;->this$0:Lcom/google/gdata/data/batch/BatchId;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchId$1;->this$0:Lcom/google/gdata/data/batch/BatchId;

    iget-object v1, p0, Lcom/google/gdata/data/batch/BatchId$1;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/data/batch/BatchId;->access$002(Lcom/google/gdata/data/batch/BatchId;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    return-void
.end method
