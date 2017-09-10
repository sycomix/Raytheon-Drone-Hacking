.class public Lcom/google/gdata/data/BaseEntry$EntryState;
.super Ljava/lang/Object;
.source "BaseEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/BaseEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntryState"
.end annotation


# instance fields
.field public adaptable:Lcom/google/gdata/data/Kind$Adaptable;

.field public authors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/gdata/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field public canEdit:Z

.field public categories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;"
        }
    .end annotation
.end field

.field public content:Lcom/google/gdata/data/Content;

.field public contributors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/gdata/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field public edited:Lcom/google/gdata/data/DateTime;

.field public etag:Ljava/lang/String;

.field public fields:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public kind:Ljava/lang/String;

.field public links:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/gdata/data/Link;",
            ">;"
        }
    .end annotation
.end field

.field public pubControl:Lcom/google/gdata/data/PubControl;

.field public published:Lcom/google/gdata/data/DateTime;

.field public rights:Lcom/google/gdata/data/TextConstruct;

.field public service:Lcom/google/gdata/client/Service;

.field public source:Lcom/google/gdata/data/Source;

.field public summary:Lcom/google/gdata/data/TextConstruct;

.field public title:Lcom/google/gdata/data/TextConstruct;

.field public updated:Lcom/google/gdata/data/DateTime;

.field public versionId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseEntry$EntryState;->categories:Ljava/util/HashSet;

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseEntry$EntryState;->links:Ljava/util/LinkedList;

    .line 195
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseEntry$EntryState;->authors:Ljava/util/LinkedList;

    .line 198
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseEntry$EntryState;->contributors:Ljava/util/LinkedList;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/BaseEntry$EntryState;->canEdit:Z

    .line 215
    new-instance v0, Lcom/google/gdata/data/Kind$AdaptableHelper;

    invoke-direct {v0}, Lcom/google/gdata/data/Kind$AdaptableHelper;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseEntry$EntryState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    return-void
.end method
