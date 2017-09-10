.class Lcom/google/gdata/data/extensions/Recurrence$Handler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Recurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Recurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/Recurrence;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/extensions/Recurrence;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Recurrence$Handler;->this$0:Lcom/google/gdata/data/extensions/Recurrence;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/extensions/Recurrence;Lcom/google/gdata/data/extensions/Recurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/extensions/Recurrence;
    .param p2, "x1"    # Lcom/google/gdata/data/extensions/Recurrence$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/gdata/data/extensions/Recurrence$Handler;-><init>(Lcom/google/gdata/data/extensions/Recurrence;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Recurrence$Handler;->this$0:Lcom/google/gdata/data/extensions/Recurrence;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Recurrence$Handler;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Recurrence;->value:Ljava/lang/String;

    .line 74
    return-void
.end method
