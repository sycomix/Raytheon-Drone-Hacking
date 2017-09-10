.class Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "BaseEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/BaseEntry$AtomHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/BaseEntry$AtomHandler;)V
    .locals 0

    .prologue
    .line 1222
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;, "Lcom/google/gdata/data/BaseEntry<TE;>.AtomHandler.IdHandler;"
    iput-object p1, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;->this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

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
    .line 1227
    .local p0, "this":Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;, "Lcom/google/gdata/data/BaseEntry<TE;>.AtomHandler.IdHandler;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;->this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1228
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateEntryId:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1233
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->idValueRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;->this$1:Lcom/google/gdata/data/BaseEntry$AtomHandler;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$AtomHandler;->this$0:Lcom/google/gdata/data/BaseEntry;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v1, p0, Lcom/google/gdata/data/BaseEntry$AtomHandler$IdHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    .line 1238
    return-void
.end method
