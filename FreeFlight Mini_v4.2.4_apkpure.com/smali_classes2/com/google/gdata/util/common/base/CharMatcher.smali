.class public abstract Lcom/google/gdata/util/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/gdata/util/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;,
        Lcom/google/gdata/util/common/base/CharMatcher$Or;,
        Lcom/google/gdata/util/common/base/CharMatcher$And;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/util/common/base/Predicate",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final INVISIBLE:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final JAVA_WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final LEGACY_WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final NONE:Lcom/google/gdata/util/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

.field private static final ZEROES:Ljava/lang/String; = "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x2000

    const/16 v3, 0x7f

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$1;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$1;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->ANY:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 112
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$2;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$2;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->NONE:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 178
    invoke-static {v2, v3}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->ASCII:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 191
    const-string v0, "\t\n\u000b\u000c\r \u0085\u00a0\u1680\u180e\u2028\u2029\u202f\u205f\u3000"

    invoke-static {v0}, Lcom/google/gdata/util/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x200a

    invoke-static {v4, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/common/base/CharMatcher;->precomputed()Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 205
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$3;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$3;-><init>()V

    invoke-virtual {v0}, Lcom/google/gdata/util/common/base/CharMatcher$3;->precomputed()Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->DIGIT:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 227
    const-string v0, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {v0}, Lcom/google/gdata/util/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 236
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$4;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$4;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->JAVA_WHITESPACE:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 247
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$5;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$5;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 259
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$6;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$6;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 269
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$7;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$7;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 279
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$8;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$8;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 289
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$9;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$9;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 299
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$10;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$10;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/gdata/util/common/base/CharMatcher;

    .line 311
    const/16 v0, 0x20

    invoke-static {v2, v0}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v3, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0xad

    invoke-static {v1}, Lcom/google/gdata/util/common/base/CharMatcher;->is(C)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x600

    const/16 v2, 0x603

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v1}, Lcom/google/gdata/util/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x200f

    invoke-static {v4, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x2028

    const/16 v2, 0x202f

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x205f

    const/16 v2, 0x2064

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x206a

    const/16 v2, 0x206f

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const/16 v1, 0x3000

    invoke-static {v1}, Lcom/google/gdata/util/common/base/CharMatcher;->is(C)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const v1, 0xd800

    const v2, 0xf8ff

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v1}, Lcom/google/gdata/util/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/common/base/CharMatcher;->precomputed()Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/CharMatcher;->INVISIBLE:Lcom/google/gdata/util/common/base/CharMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 403
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 404
    .local v0, "chars":[C
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 406
    new-instance v3, Lcom/google/gdata/util/common/base/CharMatcher$14;

    invoke-direct {v3, v0}, Lcom/google/gdata/util/common/base/CharMatcher$14;-><init>([C)V

    .end local v0    # "chars":[C
    :goto_0
    return-object v3

    .line 386
    :pswitch_0
    sget-object v3, Lcom/google/gdata/util/common/base/CharMatcher;->NONE:Lcom/google/gdata/util/common/base/CharMatcher;

    goto :goto_0

    .line 388
    :pswitch_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/gdata/util/common/base/CharMatcher;->is(C)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v3

    goto :goto_0

    .line 390
    :pswitch_2
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 391
    .local v1, "match1":C
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 392
    .local v2, "match2":C
    new-instance v3, Lcom/google/gdata/util/common/base/CharMatcher$13;

    invoke-direct {v3, v1, v2}, Lcom/google/gdata/util/common/base/CharMatcher$13;-><init>(CC)V

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static forPredicate(Lcom/google/gdata/util/common/base/Predicate;)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/base/Predicate",
            "<-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/gdata/util/common/base/CharMatcher;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "predicate":Lcom/google/gdata/util/common/base/Predicate;, "Lcom/google/gdata/util/common/base/Predicate<-Ljava/lang/Character;>;"
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    instance-of v0, p0, Lcom/google/gdata/util/common/base/CharMatcher;

    if-eqz v0, :cond_0

    .line 461
    check-cast p0, Lcom/google/gdata/util/common/base/CharMatcher;

    .line 463
    .end local p0    # "predicate":Lcom/google/gdata/util/common/base/Predicate;, "Lcom/google/gdata/util/common/base/Predicate<-Ljava/lang/Character;>;"
    :goto_0
    return-object p0

    .restart local p0    # "predicate":Lcom/google/gdata/util/common/base/Predicate;, "Lcom/google/gdata/util/common/base/Predicate<-Ljava/lang/Character;>;"
    :cond_0
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$16;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/common/base/CharMatcher$16;-><init>(Lcom/google/gdata/util/common/base/Predicate;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static inRange(CC)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 1
    .param p0, "startInclusive"    # C
    .param p1, "endInclusive"    # C

    .prologue
    .line 435
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(Z)V

    .line 436
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$15;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher$15;-><init>(CC)V

    return-object v0

    .line 435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is(C)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 1
    .param p0, "match"    # C

    .prologue
    .line 331
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$11;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/common/base/CharMatcher$11;-><init>(C)V

    return-object v0
.end method

.method public static isNot(C)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 1
    .param p0, "match"    # C

    .prologue
    .line 362
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$12;

    invoke-direct {v0, p0}, Lcom/google/gdata/util/common/base/CharMatcher$12;-><init>(C)V

    return-object v0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 1
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 423
    invoke-static {p0}, Lcom/google/gdata/util/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/common/base/CharMatcher;->negate()Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public and(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 4
    .param p1, "other"    # Lcom/google/gdata/util/common/base/CharMatcher;

    .prologue
    .line 510
    new-instance v1, Lcom/google/gdata/util/common/base/CharMatcher$And;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/gdata/util/common/base/CharMatcher;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/base/CharMatcher;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gdata/util/common/base/CharMatcher$And;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public apply(Ljava/lang/Character;)Z
    .locals 1
    .param p1, "character"    # Ljava/lang/Character;

    .prologue
    .line 1042
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 7
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C

    .prologue
    .line 982
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 983
    .local v2, "first":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 984
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1004
    :goto_0
    return-object v5

    .line 988
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    invoke-interface {p1, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 991
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 992
    .local v4, "in":Z
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 993
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 994
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/gdata/util/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 995
    if-nez v4, :cond_1

    .line 996
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 997
    const/4 v4, 0x1

    .line 992
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1000
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    const/4 v4, 0x0

    goto :goto_2

    .line 1004
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 747
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    add-int/lit8 v0, v0, 0x1

    .line 746
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    :cond_1
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 686
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 687
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 688
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 687
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 712
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 713
    .local v1, "length":I
    invoke-static {p2, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkPositionIndex(II)V

    .line 714
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 715
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 714
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 733
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 734
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 733
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 738
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 650
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 651
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    const/4 v1, 0x0

    .line 655
    :goto_1
    return v1

    .line 650
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 655
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 2

    .prologue
    .line 484
    move-object v0, p0

    .line 485
    .local v0, "original":Lcom/google/gdata/util/common/base/CharMatcher;
    new-instance v1, Lcom/google/gdata/util/common/base/CharMatcher$17;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/util/common/base/CharMatcher$17;-><init>(Lcom/google/gdata/util/common/base/CharMatcher;Lcom/google/gdata/util/common/base/CharMatcher;)V

    return-object v1
.end method

.method public or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 4
    .param p1, "other"    # Lcom/google/gdata/util/common/base/CharMatcher;

    .prologue
    .line 541
    new-instance v1, Lcom/google/gdata/util/common/base/CharMatcher$Or;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/gdata/util/common/base/CharMatcher;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/base/CharMatcher;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gdata/util/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public precomputed()Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;-><init>()V

    .line 584
    .local v0, "table":Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;
    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/base/CharMatcher;->setBits(Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;)V

    .line 586
    new-instance v1, Lcom/google/gdata/util/common/base/CharMatcher$18;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/util/common/base/CharMatcher$18;-><init>(Lcom/google/gdata/util/common/base/CharMatcher;Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;)V

    return-object v1
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 763
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/gdata/util/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 765
    .local v1, "pos":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 788
    .end local v3    # "string":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 769
    .restart local v3    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 770
    .local v0, "chars":[C
    const/4 v2, 0x1

    .line 775
    .local v2, "spread":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 777
    :goto_2
    array-length v4, v0

    if-ne v1, v4, :cond_1

    .line 788
    new-instance v3, Ljava/lang/String;

    .end local v3    # "string":Ljava/lang/String;
    const/4 v4, 0x0

    sub-int v5, v1, v2

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 780
    .restart local v3    # "string":Ljava/lang/String;
    :cond_1
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 786
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 783
    :cond_2
    sub-int v4, v1, v2

    aget-char v5, v0, v1

    aput-char v5, v0, v4

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C

    .prologue
    .line 822
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 823
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/gdata/util/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 824
    .local v2, "pos":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 834
    .end local v3    # "string":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 827
    .restart local v3    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 828
    .local v0, "chars":[C
    aput-char p2, v0, v2

    .line 829
    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 830
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 831
    aput-char p2, v0, v1

    .line 829
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 834
    :cond_2
    new-instance v3, Ljava/lang/String;

    .end local v3    # "string":Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, -0x1

    .line 855
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 856
    .local v4, "replacementLen":I
    if-nez v4, :cond_1

    .line 857
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 881
    :cond_0
    :goto_0
    return-object v5

    .line 859
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 860
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/google/gdata/util/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 863
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 864
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/gdata/util/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v3

    .line 865
    .local v3, "pos":I
    if-eq v3, v10, :cond_0

    .line 869
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 870
    .local v1, "len":I
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 872
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 874
    .local v2, "oldpos":I
    :cond_3
    invoke-virtual {v0, v5, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 876
    add-int/lit8 v2, v3, 0x1

    .line 877
    invoke-virtual {p0, v5, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 878
    if-ne v3, v10, :cond_3

    .line 880
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/google/gdata/util/common/base/CharMatcher;->negate()Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setBits(Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;)V
    .locals 3
    .param p1, "table"    # Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 609
    .local v0, "c":C
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;->set(C)V

    .line 612
    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v2

    .end local v0    # "c":C
    .local v1, "c":C
    const v2, 0xffff

    if-ne v0, v2, :cond_1

    .line 616
    return-void

    :cond_1
    move v0, v1

    .end local v1    # "c":C
    .restart local v0    # "c":C
    goto :goto_0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/google/gdata/util/common/base/CharMatcher;->negate()Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1014
    .local v2, "first":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 1015
    const-string v5, ""

    .line 1031
    :goto_0
    return-object v5

    .line 1017
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1018
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1019
    .local v4, "inMatchingGroup":Z
    move v3, v2

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1020
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1021
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/gdata/util/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1022
    const/4 v4, 0x1

    .line 1019
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1024
    :cond_1
    if-eqz v4, :cond_2

    .line 1025
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1026
    const/4 v4, 0x0

    .line 1028
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1031
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 900
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 904
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "first":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 905
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 909
    :cond_0
    add-int/lit8 v1, v2, -0x1

    .local v1, "last":I
    :goto_1
    if-le v1, v0, :cond_1

    .line 910
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 915
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 904
    .end local v1    # "last":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    .restart local v1    # "last":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 928
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 931
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "first":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 932
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 937
    :cond_0
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 931
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 950
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 953
    .local v1, "len":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "last":I
    :goto_0
    if-ltz v0, :cond_0

    .line 954
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 959
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 953
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
