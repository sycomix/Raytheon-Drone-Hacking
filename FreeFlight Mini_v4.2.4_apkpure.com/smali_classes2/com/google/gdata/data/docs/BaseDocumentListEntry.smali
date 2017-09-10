.class public Lcom/google/gdata/data/docs/BaseDocumentListEntry;
.super Lcom/google/gdata/data/docs/DocumentListEntry;
.source "BaseDocumentListEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/data/docs/DocumentListEntry;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    .local p0, "this":Lcom/google/gdata/data/docs/BaseDocumentListEntry;, "Lcom/google/gdata/data/docs/BaseDocumentListEntry<TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/gdata/data/docs/BaseDocumentListEntry;, "Lcom/google/gdata/data/docs/BaseDocumentListEntry<TE;>;"
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 45
    return-void
.end method
