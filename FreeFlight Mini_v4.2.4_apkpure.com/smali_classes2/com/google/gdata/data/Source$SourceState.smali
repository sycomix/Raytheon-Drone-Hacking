.class public Lcom/google/gdata/data/Source$SourceState;
.super Ljava/lang/Object;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SourceState"
.end annotation


# instance fields
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

.field public generator:Lcom/google/gdata/data/Generator;

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

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

.field public logo:Ljava/lang/String;

.field public rights:Lcom/google/gdata/data/TextConstruct;

.field public subtitle:Lcom/google/gdata/data/TextConstruct;

.field public title:Lcom/google/gdata/data/TextConstruct;

.field public updated:Lcom/google/gdata/data/DateTime;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/Source$SourceState;->categories:Ljava/util/HashSet;

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/Source$SourceState;->authors:Ljava/util/LinkedList;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/Source$SourceState;->contributors:Ljava/util/LinkedList;

    return-void
.end method
