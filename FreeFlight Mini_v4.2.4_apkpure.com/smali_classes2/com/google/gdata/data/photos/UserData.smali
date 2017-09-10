.class public interface abstract Lcom/google/gdata/data/photos/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Lcom/google/gdata/data/photos/GphotoData;


# static fields
.field public static final KIND:Ljava/lang/String; = "user"

.field public static final USER_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final USER_KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#user"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/photos/2007#user"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/UserData;->USER_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method


# virtual methods
.method public abstract getMaxPhotos()Ljava/lang/Integer;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getQuotaLimit()Ljava/lang/Long;
.end method

.method public abstract getQuotaUsed()Ljava/lang/Long;
.end method

.method public abstract getThumbnail()Ljava/lang/String;
.end method

.method public abstract getUsername()Ljava/lang/String;
.end method

.method public abstract setMaxPhotos(Ljava/lang/Integer;)V
.end method

.method public abstract setNickname(Ljava/lang/String;)V
.end method

.method public abstract setQuotaLimit(Ljava/lang/Long;)V
.end method

.method public abstract setQuotaUsed(Ljava/lang/Long;)V
.end method

.method public abstract setThumbnail(Ljava/lang/String;)V
.end method

.method public abstract setUsername(Ljava/lang/String;)V
.end method
