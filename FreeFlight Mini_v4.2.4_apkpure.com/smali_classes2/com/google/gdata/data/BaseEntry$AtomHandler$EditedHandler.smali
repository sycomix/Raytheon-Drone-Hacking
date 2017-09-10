.class Lcom/google/gdata/data/BaseEntry$AtomHandler$EditedHandler;
.super Lcom/google/gdata/data/Rfc3339Handler;
.source "BaseEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/BaseEntry$AtomHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditedHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/BaseEntry$AtomHandler;)V
    .locals 0

    .prologue
    .line 1264
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$AtomHandler$EditedHandler;, "Lcom/google/gdata/data/BaseEntry<TE;>.AtomHandler.EditedHandler;"
    iput-object p1, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler$EditedHandler;->this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;

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
    .line 1268
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$AtomHandler$EditedHandler;, "Lcom/google/gdata/data/BaseEntry<TE;>.AtomHandler.EditedHandler;"
    invoke-super {p0}, Lcom/google/gdata/data/Rfc3339Handler;->processEndElement()V

    .line 1269
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler$EditedHandler;->this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry$AtomHandler$EditedHandler;->getDateTime()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->edited:Lcom/google/gdata/data/DateTime;

    .line 1270
    return-void
.end method
