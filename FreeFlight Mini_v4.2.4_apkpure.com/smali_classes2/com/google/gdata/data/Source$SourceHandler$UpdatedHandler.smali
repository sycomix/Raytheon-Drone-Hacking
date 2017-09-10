.class Lcom/google/gdata/data/Source$SourceHandler$UpdatedHandler;
.super Lcom/google/gdata/data/Rfc3339Handler;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Source$SourceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdatedHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/Source$SourceHandler;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/Source$SourceHandler;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/google/gdata/data/Source$SourceHandler$UpdatedHandler;->this$1:Lcom/google/gdata/data/Source$SourceHandler;

    invoke-direct {p0}, Lcom/google/gdata/data/Rfc3339Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-super {p0}, Lcom/google/gdata/data/Rfc3339Handler;->processEndElement()V

    .line 579
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler$UpdatedHandler;->this$1:Lcom/google/gdata/data/Source$SourceHandler;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v0, v0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    invoke-virtual {p0}, Lcom/google/gdata/data/Source$SourceHandler$UpdatedHandler;->getDateTime()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    .line 580
    return-void
.end method
