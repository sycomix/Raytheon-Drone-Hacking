.class public final enum Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;
.super Ljava/lang/Enum;
.source "MediaRestriction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/media/mediarss/MediaRestriction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Relationship"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

.field public static final enum ALLOW:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

.field public static final enum DENY:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;->ALLOW:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;->DENY:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    sget-object v1, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;->ALLOW:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;->DENY:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;->$VALUES:[Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;->$VALUES:[Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    invoke-virtual {v0}, [Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    return-object v0
.end method
