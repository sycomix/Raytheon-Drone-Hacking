.class public interface abstract Lcom/google/gdata/data/photos/TagData;
.super Ljava/lang/Object;
.source "TagData.java"

# interfaces
.implements Lcom/google/gdata/data/photos/GphotoData;


# static fields
.field public static final KIND:Ljava/lang/String; = "tag"

.field public static final TAG_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final TAG_KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#tag"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/photos/2007#tag"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/TagData;->TAG_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method


# virtual methods
.method public abstract getWeight()Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation
.end method

.method public abstract setWeight(Ljava/lang/Integer;)V
.end method
