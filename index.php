<?php
include ("header.php");

/**
 * Query the last blogpost from the database.
 */
$sql = "SELECT entries.*, categories.cat FROM entries, categories "
        . "WHERE entries.cat_id = categories.id "
        . "ORDER BY dateposted DESC "
        . "LIMIT 1;";
// mysqli_query(link, query)
$result = mysqli_query($db, $sql);
$row = mysqli_fetch_assoc($result);

/**
 * Display the last blogpost.
 */
echo "<h2>$row[subject]</h2>";
echo "<p>In $row[cat] - Posted on " . date("D jS F Y (g.i A)", strtotime($row['dateposted'])) . "</p>";
echo "<p>$row[body]</p>";

/**
 * Query the comments for the last blogpost.
 */
$commsql = "SELECT name FROM comments "
        . "WHERE blog_id = " . $row['id']
        . " ORDER BY dateposted;";
$commresult = mysqli_query($db, $commsql);
$numrows_comm = mysqli_num_rows($commresult);

/**
 * Comments summary for the blogpost shown.
 */
if ($numrows_comm == 0) {
    echo "<p>No comments.";
} else {
    echo "<p>($numrows_comm) comments : ";
    while ($commrow = mysqli_fetch_assoc($commresult)) {
        echo "$commrow[name] ";
    }
}
echo "</p>";

require ("footer.php"); 

