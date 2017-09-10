.class public Lcom/google/gdata/data/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final GMT:Ljava/util/TimeZone;

.field public static final datePattern:Ljava/util/regex/Pattern;

.field public static final dateTimeChoicePattern:Ljava/util/regex/Pattern;

.field private static final dateTimeFormat822:Ljava/text/SimpleDateFormat;

.field public static final dateTimePattern:Ljava/util/regex/Pattern;


# instance fields
.field protected dateOnly:Z

.field protected tzShift:Ljava/lang/Integer;

.field protected value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/data/DateTime;->$assertionsDisabled:Z

    .line 139
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/DateTime;->dateTimePattern:Ljava/util/regex/Pattern;

    .line 146
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/DateTime;->datePattern:Ljava/util/regex/Pattern;

    .line 152
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)([Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?)?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/DateTime;->dateTimeChoicePattern:Ljava/util/regex/Pattern;

    .line 159
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/gdata/data/DateTime;->dateTimeFormat822:Ljava/text/SimpleDateFormat;

    .line 162
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/DateTime;->GMT:Ljava/util/TimeZone;

    .line 165
    sget-object v0, Lcom/google/gdata/data/DateTime;->dateTimeFormat822:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/google/gdata/data/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 166
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    .line 39
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    .line 43
    iput-wide p1, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 44
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "tzShift"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    .line 53
    iput-wide p1, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 54
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    .line 48
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Date;
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    .line 59
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 60
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    .line 61
    return-void
.end method

.method private static appendInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "num"    # I
    .param p2, "numDigits"    # I

    .prologue
    .line 438
    if-gez p1, :cond_0

    .line 439
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    neg-int p1, p1

    .line 443
    :cond_0
    new-array v1, p2, [C

    .line 444
    .local v1, "digits":[C
    add-int/lit8 v0, p2, -0x1

    .local v0, "digit":I
    :goto_0
    if-ltz v0, :cond_1

    .line 445
    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 446
    div-int/lit8 p1, p1, 0xa

    .line 444
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 450
    return-void
.end method

.method public static now()Lcom/google/gdata/data/DateTime;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/google/gdata/data/DateTime;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sget-object v2, Lcom/google/gdata/data/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/DateTime;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    .line 362
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 364
    .local v1, "m":Ljava/util/regex/Matcher;
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_2

    .line 365
    :cond_0
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "Invalid date format."

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_1
    sget-object v3, Lcom/google/gdata/data/DateTime;->datePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_0

    .line 378
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v2, Lcom/google/gdata/data/DateTime;

    invoke-direct {v2}, Lcom/google/gdata/data/DateTime;-><init>()V

    .line 379
    .local v2, "ret":Lcom/google/gdata/data/DateTime;
    iput-boolean v6, v2, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    .line 381
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 393
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v3, Lcom/google/gdata/data/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 395
    .local v0, "dateTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 396
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 400
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/gdata/data/DateTime;->value:J

    .line 401
    iget-object v3, v2, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 402
    iget-wide v4, v2, Lcom/google/gdata/data/DateTime;->value:J

    iget-object v3, v2, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v6, 0xea60

    mul-int/2addr v3, v6

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/gdata/data/DateTime;->value:J

    .line 405
    :cond_4
    return-object v2

    .line 383
    .end local v0    # "dateTime":Ljava/util/Calendar;
    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Z"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 384
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v2, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    goto :goto_1

    .line 386
    :cond_6
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v2, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    .line 388
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    new-instance v3, Ljava/lang/Integer;

    iget-object v4, v2, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    neg-int v4, v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v2, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    goto/16 :goto_1
.end method

.method public static parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x9

    const/4 v11, 0x3

    const/4 v3, 0x0

    const/16 v10, 0x8

    .line 300
    if-nez p0, :cond_1

    const/4 v8, 0x0

    .line 302
    .local v8, "m":Ljava/util/regex/Matcher;
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Invalid date/time format."

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    .end local v8    # "m":Ljava/util/regex/Matcher;
    :cond_1
    sget-object v1, Lcom/google/gdata/data/DateTime;->dateTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    goto :goto_0

    .line 320
    .restart local v8    # "m":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v9, Lcom/google/gdata/data/DateTime;

    invoke-direct {v9}, Lcom/google/gdata/data/DateTime;-><init>()V

    .line 321
    .local v9, "ret":Lcom/google/gdata/data/DateTime;
    iput-boolean v3, v9, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    .line 323
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 335
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lcom/google/gdata/data/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 337
    .local v0, "dateTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 338
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 344
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 345
    new-instance v7, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 347
    .local v7, "bd":Ljava/math/BigDecimal;
    const/16 v1, 0xe

    invoke-virtual {v7, v11}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 350
    .end local v7    # "bd":Ljava/math/BigDecimal;
    :cond_4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/google/gdata/data/DateTime;->value:J

    .line 351
    iget-object v1, v9, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 352
    iget-wide v2, v9, Lcom/google/gdata/data/DateTime;->value:J

    iget-object v1, v9, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0xea60

    mul-int/2addr v1, v4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, v9, Lcom/google/gdata/data/DateTime;->value:J

    .line 355
    :cond_5
    return-object v9

    .line 325
    .end local v0    # "dateTime":Ljava/util/Calendar;
    :cond_6
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 326
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v9, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 328
    :cond_7
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xd

    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v9, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    .line 330
    const/16 v1, 0xb

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    new-instance v1, Ljava/lang/Integer;

    iget-object v2, v9, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    neg-int v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v9, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    goto/16 :goto_1
.end method

.method public static parseDateTimeChoice(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    invoke-static {p0}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 426
    :goto_0
    return-object v2

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v1, v0

    .line 426
    .local v1, "exception":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {p0}, Lcom/google/gdata/data/DateTime;->parseDate(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 427
    :catch_1
    move-exception v0

    .line 428
    move-object v1, v0

    .line 431
    throw v1
.end method

.method public static parseRfc822(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v3, Lcom/google/gdata/data/DateTime;->dateTimeFormat822:Ljava/text/SimpleDateFormat;

    monitor-enter v3

    .line 250
    :try_start_0
    sget-object v2, Lcom/google/gdata/data/DateTime;->dateTimeFormat822:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 254
    .local v0, "date":Ljava/util/Date;
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    new-instance v2, Lcom/google/gdata/data/DateTime;

    invoke-direct {v2, v0}, Lcom/google/gdata/data/DateTime;-><init>(Ljava/util/Date;)V

    return-object v2

    .line 251
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/text/ParseException;
    :try_start_2
    new-instance v2, Lcom/google/gdata/util/ParseException;

    invoke-direct {v2, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 254
    .end local v1    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 128
    instance-of v0, p1, Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/google/gdata/data/DateTime;->value:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    check-cast p1, Lcom/google/gdata/data/DateTime;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p1, Lcom/google/gdata/data/DateTime;->value:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 130
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/google/gdata/data/DateTime;->value:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    check-cast p1, Ljava/util/Date;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0

    .line 133
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    instance-of v2, p1, Lcom/google/gdata/data/DateTime;

    if-eqz v2, :cond_2

    .line 113
    iget-wide v2, p0, Lcom/google/gdata/data/DateTime;->value:J

    check-cast p1, Lcom/google/gdata/data/DateTime;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v4, p1, Lcom/google/gdata/data/DateTime;->value:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_3

    .line 117
    iget-wide v2, p0, Lcom/google/gdata/data/DateTime;->value:J

    check-cast p1, Ljava/util/Date;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method public getTzShift()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/gdata/data/DateTime;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/gdata/data/DateTime;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDateOnly()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    return v0
.end method

.method public setDateOnly(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    return-void
.end method

.method public setTzShift(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    return-void
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/google/gdata/data/DateTime;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v8, Lcom/google/gdata/data/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v1, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 176
    .local v1, "dateTime":Ljava/util/Calendar;
    iget-wide v4, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 177
    .local v4, "localTime":J
    iget-object v8, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    if-eqz v8, :cond_0

    .line 178
    iget-object v8, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 181
    :cond_0
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 185
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-static {v3, v8, v9}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 186
    const/16 v8, 0x2d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x2

    invoke-static {v3, v8, v9}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 188
    const/16 v8, 0x2d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v3, v8, v9}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 191
    iget-boolean v8, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    if-nez v8, :cond_1

    .line 193
    const/16 v8, 0x54

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v3, v8, v9}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 195
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v3, v8, v9}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 197
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v3, v8, v9}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 200
    const/16 v8, 0xe

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->isSet(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 201
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    const/16 v8, 0xe

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-static {v3, v8, v9}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 206
    :cond_1
    iget-object v8, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 208
    iget-object v8, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_3

    .line 210
    const/16 v8, 0x5a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 214
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 215
    .local v0, "absTzShift":I
    iget-object v8, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_4

    .line 216
    const/16 v8, 0x2b

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :goto_1
    div-int/lit8 v6, v0, 0x3c

    .line 223
    .local v6, "tzHours":I
    rem-int/lit8 v7, v0, 0x3c

    .line 224
    .local v7, "tzMinutes":I
    const/4 v8, 0x2

    invoke-static {v3, v6, v8}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 225
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    const/4 v8, 0x2

    invoke-static {v3, v7, v8}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 229
    .end local v0    # "absTzShift":I
    .end local v6    # "tzHours":I
    .end local v7    # "tzMinutes":I
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 218
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v0    # "absTzShift":I
    :cond_4
    const/16 v8, 0x2d

    :try_start_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    neg-int v0, v0

    goto :goto_1
.end method

.method public toStringRfc822()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    sget-boolean v0, Lcom/google/gdata/data/DateTime;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 240
    :cond_0
    sget-object v1, Lcom/google/gdata/data/DateTime;->dateTimeFormat822:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 241
    :try_start_0
    sget-object v0, Lcom/google/gdata/data/DateTime;->dateTimeFormat822:Ljava/text/SimpleDateFormat;

    iget-wide v2, p0, Lcom/google/gdata/data/DateTime;->value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toUiString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v5, Lcom/google/gdata/data/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 265
    .local v0, "dateTime":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/google/gdata/data/DateTime;->value:J

    .line 266
    .local v2, "localTime":J
    iget-object v5, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 267
    iget-object v5, p0, Lcom/google/gdata/data/DateTime;->tzShift:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 270
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 274
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 275
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 277
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 280
    iget-boolean v5, p0, Lcom/google/gdata/data/DateTime;->dateOnly:Z

    if-nez v5, :cond_1

    .line 282
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 284
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/google/gdata/data/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
